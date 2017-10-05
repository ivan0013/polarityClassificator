import xml.etree.ElementTree

def getTweets(path):
    ''' Import tweets from training corpora '''
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
