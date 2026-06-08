#!/bin/bash

possible_operations() {
echo "Which Operation do you want to perform"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exit"
}

addition() {
echo ""
read -p "Enter a number: " num_1
read -p "Enter another number: " num_2
echo ""
add=$(($num_1 + $num_2))
echo "The addition of $mum_1 and $num_2 is $add"
echo ""
}

subtraction() {
echo ""
read -p "Enter a number: " num_1
read -p "Enter another number: " num_2
echo ""
subtract=$(($num_1 - $num_2))
echo "The subtraction of $num_1 and $num_2 is is $subtract"
echo ""
}

multiplication() {
echo ""
read -p "Enter a number: " num_1
read -p "Enter another number: " num_2
echo ""
multiply=$(($num_1 * $num_2))
echo "The multiplication of $num_1 and $num_2 is $multiply"
echo ""
}

division() {
echo ""
read -p "Enter a number: " num_1
read -p "Enter another number: " num_2
echo ""
divide=$(($num_1 / $num_2))
echo "The division of $num_1 and $num_2 is $divide"
echo ""
}

while true
do
possible_operations
read -p "Which operation do you want to perform? " choice

if [ $choice -eq 1 ]
then
addition
elif [ $choice -eq 2 ]
then
subtraction
elif [ $choice -eq 3 ]
then
multiplication
elif [ $choice -eq 4 ]
then
division
elif [ $choice -eq 5 ]
then
echo "Done!"
break
else
echo "Invalid choice!"
fi
done