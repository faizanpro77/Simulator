#! /bin/bash
echo "coin flip 10 times"
for ((i=1; i<=10; i++))
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
