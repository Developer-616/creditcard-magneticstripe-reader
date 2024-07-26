#!/bin/bash

 clear
 echo  "🤪Welcome to building SHIT!!!🤪"
 while  [  1  ]
 do
 echo  "🤑Please swipe your card to read the credit card details🤑:"
 echo  "🫠P.S. only for magnetic strips on credit cards🫠:"
     read data
     
     clear

     num = " $(echo "$data"|cut -d\B -f2|cut -d\^ -f1)"
     name = " $(echo "$data"|cut -d\^ -f2)"
     lname = " $(echo "$name"|cut -d\/ -f1)"
     fname = " $(echo "$name"|cut -d\/ -f2)"
     exdate = " $(echo "$data"|cut -d\^ -f3)"
     exdate = " ${exdate:0:2} / ${exdate:2:2}"
  
     echo  "Card number: $num"
     echo  "Cardholders: $fname  $lname"
     echo  "Expiry Date: $exdate"
     echo  "----------------------------"

done
