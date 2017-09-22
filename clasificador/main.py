#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import xml.etree.ElementTree
import os
import json
import re
from joblib import Parallel, delayed
from multiprocessing import Pool, Lock
import sys


lock = Lock()


def getTweets(path):
    tweets = xml.etree.ElementTree.parse(path).getroot()
    parsedTweets = {}

    for tweet in tweets:
        tid = tweet[0].text
        text = tweet[2].text
        if text is not None:
            text = text.encode("utf-8")
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

    # text = json.dumps(" " + text)
    # text = text.replace("\u201c", "")
    # text = text.replace("\u201d", "")

    text = text.replace("\"", "")

    if analyzer == "basico":
        command = "echo " + text + " | ../Linguakit/linguakit tagger  es"
    else:
        command = "echo  \"" + text + "\" | ../Linguakit/linguakit tagger  es  |../Linguakit/scripts/AdapterFreeling-es.perl |../Linguakit/parserFromDPG.perl -fa |../Linguakit/scripts/saidaCoNLL-fa.perl"

    f = os.popen(command)
    result = f.read()
    result = result.split("\n")


    if analyzer == "basico":
        for line in result:
            splited = line.split(" ")

            try:
                lemas.append(splited[1])
            except:
                pass


        for lema in lemas:
            if lema in sentimentDico.keys():
                try:
                    sentiment[lema] = sentimentDico[lema]
                except:
                    pass
    else:
         for line in result:
             splited = line.split("\t")

             try:
                 lema = splited[2]
                 pol = splited[5].split("pol:")[1].split("|")[0]
                 sentiment[lema] = pol

             except:
                 pass

    return sentiment

def getFinalSentiment(text, sentimentDico, analyzer):
    count = 0
    sentiment = analyzeSentiment(text, sentimentDico, analyzer)

    for word, val in sentiment.iteritems():
        if val == 1  or val == "pos":
            count += 1
        elif val == 0 or val == "neg":
            count -= 1

    return count

def sentimentMatch(inferred, polarity, matrix):
    answer = 0

    if inferred > 0 and (polarity == "P" or polarity == "P+") :
        answer = 1
    elif inferred < 0 and (polarity == "N" or polarity == "N+") :
        answer = 1
    elif inferred == 0 and (polarity == "NEU" or polarity == "NONE") :
        answer = 1
    else:
        answer = 0

    m = ""

    if inferred > 0:
        m = "p"
    elif inferred < 0:
        m = "n"
    elif inferred == 0:
        m = "m"

    if (polarity == "P" or polarity == "P+") :
        m  = m + "p"
    elif (polarity == "N" or polarity == "N+") :
        m  = m + "n"
    elif (polarity == "NEU" or polarity == "NONE") :
        m  = m + "m"

    matrix[m] = matrix[m] + 1

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

def analysis(tid, tweet, sentimentDico, analyzer, matrix):
    equals = 0

    if tweet["text"] is not None:
        try:
            inferred = getFinalSentiment(tweet["text"], sentimentDico, analyzer)
            equals = sentimentMatch(inferred, tweet["polarity"], matrix)

        except Exception as e:
            print e
            sys.exit()

    return equals

if __name__ == "__main__":
    reload(sys)
    sys.setdefaultencoding("utf-8")

    tweets = getTweets(sys.argv[1]) #'../tweets.xml'
    #tweets = getEnglishTweets(sys.argv[1])

    sentimentDico = getSentimentDico(sys.argv[2]) #../Linguakit/sentiment/es/lex_es
    #sentimentDico = getIsol()
    #sentimentDico = getBingLiuDico(sys.argv[2])

    #[sentimentDico.update(d) for sentimentDico in [{}] for d in (sentimentDico1, sentimentDico2)]

    analyzer = sys.argv[3]

    matrix = {"pp":0, "np":0, "mp":0, "pn":0, "nn":0, "mn":0, "pm":0, "nm":0, "mm":0}

    for tid, tweet in tweets.iteritems():
        res = analysis(tid, tweet, sentimentDico, analyzer, matrix)
        print str(tid) + " =>"+ str(res)

    print matrix
