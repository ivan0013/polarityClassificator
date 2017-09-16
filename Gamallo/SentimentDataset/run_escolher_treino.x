imore pt_sentiment.tsv  |gawk 'FS="\t"{print $1 "\t" $4}' |sort |uniq -c |grep  "3 positive" |sed "s/^[ ]*3 //"  > x
more pt_sentiment_agree*  |gawk 'FS="\t"{print $1 "\t" $4}'  |grep  "negative" > x

##para teste:
cat pt_test756.txt |gawk 'BEGIN{FS="\t";c=1}{print c"\t"$1}{c++}'  > ref_pt.txt
