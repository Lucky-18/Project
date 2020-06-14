echo "--GUESS--THE--NUMBER--"
num=$(ls -al | grep ^- |wc -l)
function guessing(){
echo "How many numbers of files in this current directory ?"
echo "Can you guess it ??"
while [ true ]
do
read a
if [ $a -eq $num ]
then
echo "Congrats buddy!! You did it"
break
elif [ $a -gt $num ]
then 
echo "Too High"
else
echo "Too Low"
fi
done
}
guessing
