#! /bin/bash

#Author : ANKITA ANGANE

function palindrome() {

num1=$1
s=0
rev=''
temp=$num1

while [ $num1 -gt 0 ]
do

	s=$(( $num1 % 10 ))
	num1=$(( $num1 / 10 ))
	rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ]
then
	echo "$temp is a palindrome Number"
else
	echo "$temp is not a palindrome number"
fi

}

palindrome $((RANDOM%900+100))
palindrome $((RANDOM%900+100))
palindrome $((RANDOM%900+100))
