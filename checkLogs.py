#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import xml.etree.ElementTree
import os
import json
import re
from joblib import Parallel, delayed


def getTweets(path):
    tweets = xml.etree.ElementTree.parse(path).getroot()
    parsedTweets = {}
    for tweet in tweets:
        tid = tweet[0].text
        text = tweet[2].text
        print tweet[5].text
        polarity = list(tweet[5])[0]
        polarity = polarity[0].text

        parsedTweets[tid] = {"text": text, "polarity": polarity}

    return parsedTweets

def getLogs(path):
    logs = {}
    with open (path, "r") as logFile:
        for line in logFile:
            line = chomp(line)
            line = line.split(" =>")

            if len(line) > 1:
                logs[line[0]] = line[1]

    return logs

def chomp(x):
    if x.endswith("\r\n"): return x[:-2]
    if x.endswith("\n"): return x[:-1]
    return x

def getAcertados(log):
    count = 0

    for k,v in log.iteritems():
        count += int(v)

    return count

def getGoodToBad(log1, log2):
    ids = list()

    for k1, v1 in log1.iteritems():
        if int(v1) == 1:
            if int(log2[k1]) == 0:
                ids.append(k1)
    return ids

def getBadToGood(log1, log2):
    ids = list()

    for k1, v1 in log1.iteritems():
        if int(v1) == 0:
            if int(log2[k1]) == 1:
                ids.append(k1)

    return ids

if __name__ == "__main__":
    tweets = getTweets(sys.argv[1]).keys() #'../tweets.xml'
    logs = getLogs(sys.argv[2])
    logs2 = getLogs(sys.argv[3])

    print "Missing tids:"
    print set(tweets) - set(logs.keys())
    print "Missing tids2:"
    print set(tweets) - set(logs2.keys())

    print "\n\n\n\n\n"

    print "Stats:"
    print "**** Total: "+str(len(logs))+" Acertados: " + str(getAcertados(logs)) +" = " + str((getAcertados(logs)*100)/float(len(logs))) + "%"
    print "Stats2:"
    print "**** Total: "+str(len(logs2))+" Acertados: " + str(getAcertados(logs2)) +" = " + str((getAcertados(logs2)*100)/float(len(logs2))) + "%"

    print "\n\n\n\n\n"

    # print "Casos que en basico detecta bien y en avanzado mal:"
    # print getGoodToBad(logs, logs2)
    #
    # print "Casos que en basico detecta mal y en avanzado bien:"
    # print getBadToGood(logs, logs2)
