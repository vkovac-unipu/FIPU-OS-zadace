#!/bin/bash

#ZZV3 4_zad

# provjera broja argumenata 
if [ "$#" -ne 1 ]; then
	echo "Unesite tocno jedan argument: naziv direktorija"
	exit 1
fi

naziv_direktorija=$1


if [[ ! -d "$naziv_direktorija" ]]; then
	echo "Uneseni direktorij ne postoji"
	exit 1
fi

# prema skripti najlakse se prebaciti u direktorij
cd "$naziv_direktorija" || exit

# zapakiraj u vanjskom direktoriju
zip -r ../svi_zapisi.zip *






