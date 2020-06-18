#!/bin/bash
dosyaSayaci=0;
dizinSayaci=0;
for i in `ls $1`
do
	if [ -f $1/$i ]
	then
		printf "%s bir dosyadır.\n" $i;
		((dosyaSayaci++));
	elif [ -d $1/$i ]
	then
		printf "%s bir dizindir.\n" $i;
		((dizinSayaci++));
	fi 
	
done
printf "%d adet dosya %d adet dizin incelenmiştir" $dosyaSayaci $dizinSayaci;

