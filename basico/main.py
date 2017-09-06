import xml.etree.ElementTree

tweets = xml.etree.ElementTree.parse('../tweets.xml').getroot()

for tweet in tweets:
    print(tweet[2].text)
