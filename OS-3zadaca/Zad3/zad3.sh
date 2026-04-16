#!/bin/bash

putanja="/Users/vilistudyuser/Vili/College_Files/Pula/2semestar/OS/OS_zadace_Github/OS-3zadaca/Zad3/screenshots"

brojac=1

# pazi! zvijezdica mora izvna navodnika
for datoteka in "${putanja}"/*; do

	ime_datoteke=$(basename "$datoteka")
	novo_ime="screenshot_${brojac}_${ime_datoteke}"
((brojac++))

	mv "$datoteka" "$putanja"/"$novo_ime"
	echo $novo_ime

done

