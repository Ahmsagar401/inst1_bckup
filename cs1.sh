#!/bin/bash
echo "Enter first number"
read n1
echo "Enter second number"
read n2
echo -e "Choose the operator to perform the operation \n + to add \n - to subtract \n * to multiply \n /to divide \n % to modulus"
read oper
case $oper in
	'+')sum=`expr $n1 + $n2`
		echo "Addition of two numbers is $sum"
		;;
	'-')sub=`expr $n1 - $n2`
		echo "Subtraction of two numbers is $sub"
		;;
	'*')mul=`expr $n1 \* $n2`
		echo "Product of two numbers is $mul"
		;;
	'/') if [ $n2 -ne 0 ]
	then
		div=`expr $n1 / $n2`
		echo "Division of two number is $div"
	else
		echo "Enter second value greater than 0"
	fi
	         ;;
        '%') mod=`expr $n1 % $n2`
		echo "Reminder of two number is $mod"
		;;
	*)echo "Please choose the correct option"	
                ;;
esac

