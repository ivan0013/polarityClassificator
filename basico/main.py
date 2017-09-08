#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import xml.etree.ElementTree
import os
import json


def getTweets():
    tweets = xml.etree.ElementTree.parse('../tweets.xml').getroot()
    parsedTweets = {}

    for tweet in tweets:
        tid = tweet[0].text
        text = tweet[2].text
        polarity = list(tweet[5])[0]
        polarity = polarity[0].text

        parsedTweets[tid] = {"text": text, "polarity": polarity}

    return parsedTweets

def analyzeSentiment(text):
    sentiment = {}

    text = json.dumps(" " + text)
    text = text.replace("\u201c", "")
    text = text.replace("\u201d", "")

    command = "../Linguakit/linguakit tagger  es  " + text + " |../Linguakit/scripts/AdapterFreeling-es.perl |../Linguakit/parserFromDPG.perl -fa |../Linguakit/scripts/saidaCoNLL-fa.perl"

    f = os.popen(command)
    result = f.read()
    result = result.split("\n")
    for line in result:
        splited = line.split("\t")
        try:
            word = splited[1]
            pol = splited[5].split("pol:")[1].split("|")[0]
            sentiment[word] = pol
        except:
            pass

    return sentiment

def getFinalSentiment(text):
    count = 0
    sentiment = analyzeSentiment(text)

    for word, val in sentiment.iteritems():
        if val == "pos":
            count += 1
        elif val == "neg":
            count -= 1

    return count

def sentimentMatch(inferred, polarity):
    answer = 0

    if inferred > 0 and (polarity == "P" or polarity == "P+") :
        answer = 1
    elif inferred < 0 and (polarity == "N" or polarity == "N+") :
        answer = 1
    elif inferred == 0 and (polarity == "NEU" or polarity == "NONE") :
        answer = 1
    else:
        answer = 0

    return answer



if __name__ == "__main__":
    tweets = getTweets();
    results = 0

    # for tid, tweet in tweets.iteritems():
    #     try:
    #         inferred = getFinalSentiment(tweet["text"].encode('utf-8'))
    #     except:
    #         print "cacaca " + tid
    #         sys.exit()
    #
    #     equals = sentimentMatch(inferred, tweet["polarity"])
    #     results += equals
    #
    #     print tid + "=>" + str(equals)

    tid = '144725240075915264'
    tweet = tweets[tid]
    inferred = getFinalSentiment(tweet["text"].encode('utf-8'))
    equals = sentimentMatch(inferred, tweet["polarity"])
    results += equals

    print tid + "=>" + str(equals)

    print results
