#!/bin/bash
ls $1/*.$2| #istenilen uzantılı dosyaları aldık 
while read line  # satır satır (yani dosyaları teker teker) programa sokuyoruz
do
	ilkkisim=$(basename $line|cut -d '.' -f 1)  #noktadan önceki kısmı bir değişkene atıyoruz
	sonhal=$ilkkisim.$3 # istenilen uzantıyla birlikte bir değişkende ismi tutuyoruz
	mv $line $sonhal #son olarak ismi değiştiriyoruz
done
