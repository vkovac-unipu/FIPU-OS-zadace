#!/bin/bash
#ZZV3  1_zad

# provjera broja argumenata
if [[ $# -ne 2  ]]; then
	echo "Potrebno je proslijediti tocno dva argumenta!"
	echo "Apsolutnu putanju do direktorija i ekstenziju u obliku: .html .txt ili slicno"
	exit 1
fi

# pazi da nema razmaka!!!
putanja=$1
ekstenzija=$2
brojac=0

if [[ ! -d "$putanja" ]]; then
	echo "Putanja ne posotji"
	exit 2
fi

echo "Trazimo datoteke s ekstenzijom ${ekstenzija} u datoteci ${putanja}:"

# ispis imena datoteka s esktenzijom
for datoteka in "$putanja"/*; do

	if [[ "$datoteka" == *"$ekstenzija" ]]; then

	ime_datoteke=$(basename "$datoteka")
	echo "$ime_datoteke"
# pazi na zagrade za aritmetiku
	((brojac++))

	fi
done

	if [[ $brojac -eq 0 ]]; then
	echo "U direktorju nema datoteka s ekstenzijom $ekstenzija"
	fi


