#!/bin/bash
# log parser - counts number of logs per minute

FILENAME="logmessage.txt"

# fetching time pattern

grep "Jan 20" $FILENAME | awk {'print $3'} | uniq -c | grep "03:25" > f1.txt
awk '{ sum += $1 } END { print sum }' f1.txt > tot1.txt
sed -n 1p f1.txt | awk {'print $2'}| cut -c-5 > t1.txt
cat tot1.txt >> t1.txt
grep "Jan 20" $FILENAME | awk {'print $3'} | uniq -c | grep "03:26" > f2.txt
awk '{ sum += $1 } END { print sum }' f2.txt > tot2.txt
sed -n 1p f2.txt | awk {'print $2'}| cut -c-5 > t2.txt
cat tot2.txt >> t2.txt
grep "Jan 20" $FILENAME | awk {'print $3'} | uniq -c | grep "03:30" > f3.txt
awk '{ sum += $1 } END { print sum }' f3.txt > tot3.txt
sed -n 1p f3.txt | awk {'print $2'}| cut -c-5 > t3.txt
cat tot3.txt >> t3.txt
grep "Jan 20" $FILENAME | awk {'print $3'} | uniq -c | grep "05:03" > f4.txt
awk '{ sum += $1 } END { print sum }' f4.txt > tot4.txt
sed -n 1p f4.txt | awk {'print $2'}| cut -c-5 > t4.txt
cat tot4.txt >> t4.txt
grep "Jan 20" $FILENAME | awk {'print $3'} | uniq -c | grep "05:20" > f5.txt
awk '{ sum += $1 } END { print sum }' f5.txt > tot5.txt
sed -n 1p f5.txt | awk {'print $2'}| cut -c-5 > t5.txt
cat tot5.txt >> t5.txt
grep "Jan 20" $FILENAME | awk {'print $3'} | uniq -c | grep "05:22" > f6.txt
awk '{ sum += $1 } END { print sum }' f6.txt > tot6.txt
sed -n 1p f6.txt | awk {'print $2'}| cut -c-5 > t6.txt
cat tot6.txt >> t6.txt

# printing the final result
cat t1.txt | tr '\n' ','| cut -c-7 > msg_1.txt
awk '{print "Jan 20",$0}' msg_1.txt > final_1.txt
cat t2.txt | tr '\n' ','| cut -c-7 > msg_2.txt
awk '{print "Jan 20",$0}' msg_2.txt > final_2.txt
cat t3.txt | tr '\n' ','| cut -c-7 > msg_3.txt
awk '{print "Jan 20",$0}' msg_3.txt > final_3.txt
cat t4.txt | tr '\n' ','| cut -c-7 > msg_4.txt
awk '{print "Jan 20",$0}' msg_4.txt > final_4.txt
cat t5.txt | tr '\n' ','| cut -c-7 > msg_5.txt
awk '{print "Jan 20",$0}' msg_5.txt > final_5.txt
cat t6.txt | tr '\n' ','| cut -c-7 > msg_6.txt
awk '{print "Jan 20",$0}' msg_6.txt > final_6.txt

# appending final messages
echo "minutes, number_of_messages"
cat final_1.txt final_2.txt final_3.txt final_4.txt final_5.txt final_6.txt > final_log.txt
cat final_log.txt

