#!/bin/bash
#ZZV3 3_zad

putanja="/Users/vilistudyuser/Vili/College_Files/Pula/2semestar/OS/OS_zadace_Github/OS-3zadaca/Zad3/screenshots"

brojac=1

# pazi! zvijezdica mora izvan navodnika
for datoteka in "${putanja}"/*; do

	ime_datoteke=$(basename "$datoteka")
	novo_ime="screenshot_${brojac}_${ime_datoteke}"
((brojac++))

	nova_putanja="${putanja}/${novo_ime}"
	mv "$datoteka" "$nova_putanja"
	echo "$novo_ime"

done

