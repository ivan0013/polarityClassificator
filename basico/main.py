#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import xml.etree.ElementTree
import os
import json
import re
from joblib import Parallel, delayed
from multiprocessing import Pool, Lock

lock = Lock()


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

def getEnglishTweets(path):
    tweets = {}
    count = 0

    with open (path, "r") as corpus:
        for line in corpus:
            line = chomp(line)
            line = line.split("\t")

            text = line[1]
            polarity = line[0]

            tweets[count] = {"text": text, "polarity": polarity}

    return tweets

def getBingLiuDico(path):
    isol = {}
    posPath = "../benliu/positive-words.txt"
    negPath = "../benliu/negative-words.txt"

    with open (posPath, "r") as dico:
        for line in dico:
            line = chomp(line)
            isol[line] = 1

    with open (negPath, "r") as dico:
        for line in dico:
            line = chomp(line)
            isol[line] = 0

    return isol

def getIsol():
    isol = {}
    posPath = "../isol/isol/positivas_mejorada.csv"
    negPath = "../isol/isol/negativas_mejorada.csv"

    with open (posPath, "r") as dico:
        for line in dico:
            line = chomp(line)
            isol[line] = 1

    with open (negPath, "r") as dico:
        for line in dico:
            line = chomp(line)
            isol[line] = 0

    return isol


def analyzeSentiment(text, sentimentDico, analyzer):
    sentiment = {}
    lemas = list()

    text = json.dumps(" " + text)
    text = text.replace("\u201c", "")
    text = text.replace("\u201d", "")

    if analyzer == "basico":
        command = "echo " + text + " | ../Linguakit/linguakit lem  en"
    else:
        command = "echo " + text + " | ../Linguakit/linguakit tagger  en  |../Linguakit/scripts/AdapterFreeling-en.perl |../Linguakit/parserFromDPG.perl -fa |../Linguakit/scripts/saidaCoNLL-fa.perl"

    f = os.popen(command)
    result = f.read()
    result = result.split("\n")

    for line in result:
        splited = line.split("\t")
        try:
            lema = splited[1]

            if analyzer == "basico":
                lemas.append(lema)
            else:
                pol = splited[5].split("pol:")[1].split("|")[0]
                sentiment[lema] = pol

        except:
            pass

    if analyzer == "basico":
        for lema in lemas:
            if lema in sentimentDico.keys():
                sentiment[lema] = sentimentDico[lema]

    return sentiment

def getFinalSentiment(text, sentimentDico, analyzer):
    count = 0
    sentiment = analyzeSentiment(text, sentimentDico, analyzer)

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

def analysis(tid, tweet, sentimentDico, analyzer):
    equals = 0

    if tweet["text"] is not None:
        try:
            #print tweet["text"].encode('utf-8')
            inferred = getFinalSentiment(tweet["text"].encode('utf-8'), sentimentDico, analyzer)
            equals = sentimentMatch(inferred, tweet["polarity"])

            with lock:
                sys.stdout.write( tid )
                sys.stdout.write( " =>" )
                sys.stdout.write( str(equals) )
                sys.stdout.write( "\n" )



        except Exception as e:
            print e
            sys.exit()

    return equals

if __name__ == "__main__":
    #tweets = getTweets(sys.argv[1]) #'../tweets.xml'
    tweets = getEnglishTweets(sys.argv[1])

    #sentimentDico1 = getSentimentDico(sys.argv[2]) #../Linguakit/sentiment/es/lex_es
    #sentimentDico2 = getIsol()
    sentimentDico = getBingLiuDico(sys.argv[2])

    #[sentimentDico.update(d) for sentimentDico in [{}] for d in (sentimentDico1, sentimentDico2)]

    analyzer = sys.argv[3]



    for tid, tweet in tweets.iteritems():
        analysis(tid, tweet, sentimentDico, analyzer)
