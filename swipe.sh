#!/bin/bash

 clear
 echo  "🤪Herzlich Willkommen beim SCHEIßE Bauen!!!🤪"
 while  [  1  ]
 do
 echo  "Bitte ziehen Sie Ihre Karte durch zum auslesen der Kreditkarten daten🤑:"
 echo  "PS. nur für Magnetstreifen von KreditKarten🫠:"
     read data
     
     clear

     num = " $(echo "$data"|cut -d\B -f2|cut -d\^ -f1)"
     name = " $(echo "$data"|cut -d\^ -f2)"
     lname = " $(echo "$name"|cut -d\/ -f1)"
     fname = " $(echo "$name"|cut -d\/ -f2)"
     exdate = " $(echo "$data"|cut -d\^ -f3)"
     exdate = " ${exdate:0:2} / ${exdate:2:2}"
  
     echo  "Kartennummer: $num"
     echo  "Karteninhaber: $fname  $lname"
     echo  "Ablaufdatum: $exdate"
     echo  "----------------------------"

done
