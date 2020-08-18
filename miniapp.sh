#! /bin/bash

clear
echo "================================================================"
echo "*************** SELAMAT DATANG DI APLIKASI INI *****************"
echo "================================================================"
echo ""
read -p "Masukan username : " name
read -p "Masukan Password : " pass

if [ $name = $USER ]
then
	clear
	echo "================================================================"
	echo "********* SELAMAT DATANG '$name' DI APLIKASI INI ***************"
	echo "================================================================"
	echo ""
	echo "----------------------------------------------------------------"
	echo "Pilih perintah yang akan anda lakukan"
	echo " 1. Membuah direktori \n 2. Membuat file"
	read -p "Masukan pilihan anda: " num

	if [ $num -eq 1 ]
	then
		echo "--------------------------------------------"
		echo ""
		read -p "Masukan nama direktori : " ndir
		read -p "Masukan lokasi direktori baru : " ldir
		mkdir $ldir/$ndir
		echo ""
		echo "**************************************************************"
		echo "berhasil membuat direktori $ndir pada lokasi $ldir"
		echo "--------------------------------------------------------------"
	elif [ $num -eq 2 ]
	then
		echo "--------------------------------------------"
                echo ""
                read -p "Masukan nama file : " nfile
                read -p "Masukan lokasi file baru : " lfile
                mkdir $lfile/$nfile
                echo ""
                echo "**************************************************************"
                echo "berhasil membuat file - $nfile - pada lokasi $lfile"
                echo "--------------------------------------------------------------"
	
	else
		clear
	        echo "================================================================"
        	echo " Masukan angka 1 atau 2..!"
	        echo "================================================================"

	fi
else
	clear
	echo "================================================================"
	echo " Username yang anda masukan salah!"
	echo "================================================================"
fi

