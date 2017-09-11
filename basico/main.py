#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import xml.etree.ElementTree
import os
import json
import re

def getTweets(path):
    tweets = xml.etree.ElementTree.parse(path).getroot()
    parsedTweets = {}

    for tweet in tweets:
        tid = tweet[0].text
        text = tweet[2].text
        polarity = list(tweet[5])[0]
        polarity = polarity[0].text

        parsedTweets[tid] = {"text": text, "polarity": polarity}

    return parsedTweets

def analyzeSentiment(text, sentimentDico):
    sentiment = {}

    text = json.dumps(" " + text)
    text = text.replace("\u201c", "")
    text = text.replace("\u201d", "")
    text = getWords(text)

    for word in text:
        if word in sentimentDico.keys():
            sentiment[word] = sentimentDico[word]

    return sentiment

def getFinalSentiment(text, sentimentDico):
    count = 0
    sentiment = analyzeSentiment(text, sentimentDico)

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

def getSentimentDico(path):
    finalDico = {}
    with open (path, "r") as dico:
        for line in dico:
            line = chomp(line)
            line = line.split("\t")
            finalDico[line[0]] = line[1][0:3].lower()

    return finalDico

def chomp(x):
    if x.endswith("\r\n"): return x[:-2]
    if x.endswith("\n"): return x[:-1]
    return x

def getWords(text):
    return re.compile('\w+').findall(text)


if __name__ == "__main__":
    tweets = getTweets('../tweets.xml');
    sentimentDico = getSentimentDico("../Linguakit/sentiment/es/lex_es");
    results = 0

    for tid, tweet in tweets.iteritems():
        if tweet["text"] is not None:
            try:
                inferred = getFinalSentiment(tweet["text"].encode('utf-8'), sentimentDico)
            except:
                print "Exception in  " + tid
                sys.exit()

            equals = sentimentMatch(inferred, tweet["polarity"])
            results += 1

        print tid + "=>" + str(equals)

    # tid = '167301187157229568'
    # tweet = tweets[tid]
    # inferred = getFinalSentiment(tweet["text"].encode('utf-8'))
    # equals = sentimentMatch(inferred, tweet["polarity"])
    # results += equals
    #
    # print tid + "=>" + str(equals)
    #
    # print "FINAL: \n"
    print results
