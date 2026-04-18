#!/bin/bash
#ZZV3 2_zad

# provjera broja argumenata
if [[ $# -ne 1 ]]; then
	echo "Potrebno je unijeti jedan argument" 
	exit 1
fi

# stavi varijablu argumenta NAKON provjere
broj=$1


# provjera raspona

if [[ "$broj" -lt 1 ||  "$broj" -gt 10 ]]; then
	echo "Uneseni broj mora biti u rasponu od 1 do 10"
	exit 1
fi
# stvaranje niza i punjenje niza
niz=()

for (( i=1; i<= "$broj"; i++ ));do
	niz+=("$i")
done

# spremanje u tekstualnu datoteku
echo "${niz[@]}" > brojevi.txt

# provjera je li datoteka ispravno stvorena i ispis poruke korisniku
	if [[ -f brojevi.txt ]]; then
		echo "Datoteka brojevi.txt uspjesno stvorena"
	else
		echo "Greska: Datoteka nije stvorena."
		exit 1
fi


