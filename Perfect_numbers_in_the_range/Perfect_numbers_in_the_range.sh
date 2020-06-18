#!/bin/bash

taban=$1
tavan=$2
echo $sonuc

if [ $taban -gt $tavan ]
then
	echo "Taban tavandan büyük olamaz."
elif [ $taban -le $tavan ]
then
	for (( i = 2; i < $tavan; i=i+1 )) #formalite bir for döngüsü kullandık aralıktaki asal sayılar için
	do
		asalmi=0 #Asallık kontrolü için değişşkenler
		asalmi2=0
		for (( j = i; j > 1; j=j-1 )) #asal sayılar kontrolü
		do
			if (( i % j == 0 )) 
			then
				(( asalmi=asalmi+1 ))
			fi
		done
		if (( $asalmi == 1 )) #asal sayılar alınır ona göre algoritma kullanılır
		then
			(( sonuc=2**i - 1 )) #bu sayının da asallığı kontrol edilir 

			for (( k = $sonuc; k > 1; k=k-1 )) 
			do
				if (( $sonuc % k == 0 ))
				then
					(( asalmi2=asalmi2+1 ))
				fi
			done 
			(( mukemmel = (2**( i - 1 )) * ((2**i -1)) )) # mukemmel sayıları hesaplar
			if [ $mukemmel -ge $taban ] && [ $mukemmel -le $tavan ] && [ $asalmi2 -eq 1 ]
			then #istenilen aralıklarda ise ekrana yazdırır
				echo -n $mukemmel " "
			elif [ $mukemmel -gt $tavan ]
			then
				echo " "
				break
			else
				continue
			fi
		fi
	if [ $mukemmel -gt $tavan ]
	then
		break
	fi
	done
else
	echo "yanlış giriş"
fi
