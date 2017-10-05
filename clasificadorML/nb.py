from collections import Counter
import csv
import re
import sys
import xml.etree.ElementTree
import os


def getTweets(path):
    tweets = xml.etree.ElementTree.parse(path).getroot()
    parsedTweets = {}

    for tweet in tweets:
        tid = tweet[0].text
        text = tweet[2].text
        if text is not None:
            text = text.encode("utf-8")
        polarity = list(tweet[5])[0][0].text

        if (polarity == "P" or polarity == "P+") :
            polarity = 1
        elif (polarity == "N" or polarity == "N+") :
            polarity = 0
        elif (polarity == "NEU" or polarity == "NONE") :
            polarity = -1

        parsedTweets[tid] = {"text": text, "polarity": polarity}

    return parsedTweets


def get_text(tweets, score):
  # Join together the text in the tweets for a particular tone.
  # We lowercase to avoid "Not" and "not" being seen as different words, for example.
  regex = re.compile('[^a-zA-Z]')
  words = list()

  for tid, tweet in tweets.iteritems():
      #print tweet["polarity"]
      if tweet["polarity"] == score and tweet["text"] is not None:
          words.append(tweet["text"].lower())

  words = [regex.sub(' ', w) for w in words]
  words = " ".join(words)

  command = "echo  \"" + words + "\" | ../Linguakit/linguakit lem  es "

  f = os.popen(command)
  result = f.read()
  result = result.split("\n")

  lemas = list()
  for line in result:
      splited = line.split(" ")

      try:
          lemas.append(splited[1])
      except:
          pass

  lemmatizedText = " ".join(lemas)


  return lemmatizedText

def count_text(text):
  # Split text into words based on whitespace.  Simple but effective.
  words = re.split("\s+", text)
  # Count up the occurence of each word.
  return Counter(words)

def get_y_count(score):
  # Compute the count of each classification occuring in the data.

  aux = list()
  for k, r in tweets.iteritems():
      if r["polarity"] == score:
          aux.append(r)

  return len(aux)

def make_class_prediction(text, counts, class_prob, class_count):
  prediction = 1
  text_counts = Counter(re.split("\s+", text))

  for word in text_counts:
      # For every word in the text, we get the number of times that word occured in the tweets for a given class, add 1 to smooth the value, and divide by the total number of words in the class (plus the class_count to also smooth the denominator).
      # Smoothing ensures that we don't multiply the prediction by 0 if the word didn't exist in the training data.
      # We also smooth the denominator counts to keep things even.
      prediction *=  text_counts.get(word) * ((counts.get(word, 0) + 1) / float((sum(counts.values()) + class_count)))
      #print counts
  # Now we multiply by the probability of the class existing in the documents.
  return prediction * class_prob


if __name__ == "__main__":
    reload(sys)
    sys.setdefaultencoding("utf-8")

    tweets = getTweets(sys.argv[1])

    d1 = dict(tweets.items()[len(tweets)/14:])
    tweetsTest = dict(tweets.items()[:len(tweets)/14])
    tweets = d1

    negative_text = get_text(tweets, -1)
    positive_text = get_text(tweets, 1)
    neutral_text = get_text(tweets, 0)

    # Generate word counts for negative tone.
    negative_counts = count_text(negative_text)
    # Generate word counts for positive tone.
    positive_counts = count_text(positive_text)
    # Generate word counts for neutral tone.
    neutral_counts = count_text(neutral_text)

    # We need these counts to use for smoothing when computing the prediction.
    positive_review_count = get_y_count(1)
    negative_review_count = get_y_count(-1)

    # These are the class probabilities (we saw them in the formula as P(y)).
    prob_positive = positive_review_count / float(len(tweets))
    prob_negative = negative_review_count / float(len(tweets))

    for tid, t in tweetsTest.iteritems():
        print("Review: {0}".format(t["text"]))
        if (make_class_prediction(t["text"], negative_counts, prob_negative, negative_review_count) > make_class_prediction(t["text"], positive_counts, prob_positive, positive_review_count)):
            print "Negative"
        else:
            print "Positive"
