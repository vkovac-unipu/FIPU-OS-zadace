#!/bin/bash

# ZZV3 ZAD5

putanja=$1

if [[ $# -ne 1 ]]; then
	echo "Potrebno je unijeti tocno jedan argument"
	exit 1
fi

# postoji li direktorij
if [[ ! -d $putanja ]]; then

	echo "Uneseni direktorij ne posotji"
	exit 1
fi

# posotji li .git
if [[ -d "${putanja}/.git" ]]; then

	echo "Ovo je Git repozitorij"
else
	echo  "Ovo nije Git repozitorij"
	exit 1
fi

# ulazimo u direktorij za pokretanje naredbi

cd "$putanja" || exit 1

touch repozitorij_info.txt
echo "Pozdrav iz github skripte" > repozitorij_info.txt

git add repozitorij_info.txt

git commit -m "Commit iz skripte: dodavanje info datoteke"

git log

