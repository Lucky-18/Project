echo "--GUESSING--GAME"
num=$(find /root/GG_TEST -type f | wc -l)
echo "How many folders are there in current directory ??"
echo "can you guess it?"
while [ true ]
do
read a
tyu=$(egrep -e "^[0-9]+$" <<< $a)
if [ $? -eq 0 ]
then
if [ $a -eq $num ]
then
echo "Congrats!! You did it"
break
elif [ $a -gt $num ]
then
echo "Too High"
else [ $a -lt $num ]
echo "Too Low"
fi
else
echo "Invalid Input"
fi
done
