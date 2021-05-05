#! /bin/bash
count=0
count1=0
while [ $count -lt 21 -a $count1 -lt 21 ]
do
if [ $((RANDOM%2)) -eq 0 ]
then
echo "Head"
count=$((count+1))
else
echo "Tail"
count1=$((count1+1))
fi
done
echo "number of time head="$count
echo "number of time tail="$count1

if [ $count -eq $count1 ]
then
echo "match is Tie"
else
echo "match is win"
fi

if [ $count -eq 21 -a $count -ne $count1 ]
then
echo "Head win"
diff=$((count-count1))
echo "Head win with point="$diff
elif [ $count1 -eq 21 -a $count -ne $count1 ]
then    
echo "Tail win"
diff1=$((count1-count))
echo "Tail win with point="$diff1
fi
