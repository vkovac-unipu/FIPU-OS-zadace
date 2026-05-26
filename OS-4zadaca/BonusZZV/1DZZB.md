## Zadaci za vježbu: OS4 - Rad na Virtualnom stroju

### Zadatak 1: Ubuntu Server, JavaScript, Node.js i krave 🐮

Student: Vilibald Kovac
online studij informatike

---


1. Pokrenite Ubuntu Server preko VirtualBox-a. Upute za instalaciju možete pronaći u skripti _OS4 - Rad na Virtualnom stroju: Uvod_. Ako ste već instalirali Ubuntu Server, preskočite ovaj korak.


2. Ažurirajte lokalnu listu paketa i verzija te instalirajte pakete `nodejs` i `npm` (_Node Package Manager_). Npm je alat koji se koristi za instalaciju i upravljanje paketima za Node.js okruženje.

Spojio sam se na moj Ubuntu Server koristeći `ssh` naredbu:

```bash 
# Pokretanje SSH klijenta na domaćinu (Mac / iTerm) i spajanje na poslužitelj
ssh vilibald-kovac@192.168.1.122

```


3. Provjerite jesu li navedeni paketi uspješno instalirani; napišite na crtu kako to možete provjeriti na barem 2 načina na Ubuntu Serveru:

```bash
# 1 nacin 

vilibald-kovac@vili-server:~$ nodejs -v
v22.22.1
vilibald-kovac@vili-server:~$ npm -v
9.2.0

# 2 nacin 
vilibald-kovac@vili-server:~$ apt-cache policy npm nodejs
npm:
  Installed: 9.2.0~ds3-1
  Candidate: 9.2.0~ds3-1
  Version table:
 *** 9.2.0~ds3-1 500
        500 http://archive.ubuntu.com/ubuntu resolute/universe arm64 Packages
        100 /var/lib/dpkg/status
nodejs:
  Installed: 22.22.1+dfsg+~cs22.19.15-1ubuntu1
  Candidate: 22.22.1+dfsg+~cs22.19.15-1ubuntu1
  Version table:
 *** 22.22.1+dfsg+~cs22.19.15-1ubuntu1 500
        500 http://archive.ubuntu.com/ubuntu resolute/universe arm64 Packages
        100 /var/lib/dpkg/status
vilibald-kovac@vili-server:~$

```



4. Pokrenite naredbu `node` u terminalu - to će otvoriti Node.js REPL okruženje u koje možete direktno pisati JavaScript kod. Osim toga, ako se uz istu naredbu navede i putanja do datoteke, Node.js će izvršiti JavaScript kod definiran u toj datoteci (_pokrenuti tu `js` skriptu_). Prebacite se u _home_ direktorij i napravite `node_project` direktorij.

```bash
vilibald-kovac@vili-server:~$ cd ~
vilibald-kovac@vili-server:~$ pwd
/home/vilibald-kovac
vilibald-kovac@vili-server:~$ mkdir node_project
vilibald-kovac@vili-server:~$ ls
dobrodosli.txt  node_project  skripta_dz4.sh
vilibald-kovac@vili-server:~$
```



5. Stvorite novu datoteku `hello.js` unutar tog direktorija te u nju pohranite vaše ime i prezime u varijablu i ispišite poruku u konzolu: `Pozdrav ja sam <ime i prezime> i uspješno sam pokrenuo JS u Node.js okruženju!` koristeći interpolaciju stringova.

```bash
vilibald-kovac@vili-server:~/node_project$ node hello.js
Pozdrav ja sam Vilibald Kovac i uspjesno sam pokrenuo JS u Node.js okruzenju!
vilibald-kovac@vili-server:~/node_project$ cat hello.js
// hello,js

let ime_i_prezime = "Vilibald Kovac"

console.log(`Pozdrav ja sam ${ime_i_prezime} i uspjesno sam pokrenuo JS u Node.js okruzenju!`)


vilibald-kovac@vili-server:~/node_project$
```



6.  Instalirajte Debian paket `cowsay` koji će ispisivati poruke u obliku krave 🐮. Proučite kako se paket paket koristi naredbom `man` (_manual_). Unutar istog direktorija, napišite bash skriptu koja očekuje jedan argument; ako korisnik nije proslijedio točno 1 argument vratite grešku i prekinite izvođenje skripte.


```bash
#/bin/bash

if [[ $# -ne 1  ]]; then
echo 'Potrebno je unijeti tocno 1 argument'
exit 1
fi

poruka=$1

cowsay "$poruka"

```

7. Ako je korisnik proslijedio točno 1 argument, njegovu vrijednost pohranite u varijablu `poruka` i pozovite `cowsay` naredbu s tom porukom unutar _bash_ skripte.

```bash

vilibald-kovac@vili-server:~/node_project$ ./cowsay_skripta.sh "Bok ja sam krava"
 __________________
< Bok ja sam krava >
 ------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

8. Pozovite bash skriptu, a kao argument proslijedite rezultat izvođenja (_output_) `node hello.js` datoteke (hint: _bash_ supstitucija naredbi).


```bash 
vilibald-kovac@vili-server:~/node_project$ ./cowsay_skripta.sh "$(node hello.js)"
 ____________________________________
/ Pozdrav ja sam Vilibald Kovac i    \
| uspjesno sam pokrenuo JS u Node.js |
\ okruzenju!                         /
 ------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
vilibald-kovac@vili-server:~/node_project$
```


9.  Proučite još malo `cowsay` paket. Konkretno, zanimaju vas dostupne zastavice koje možete koristiti prilikom pozivanja `cowsay` naredbe. Primjerice, zanima vas kako iscrtati: _pohlepnu kravu, umornu kravu, paranoičnu kravu,...?_ Na crtu napišite sve dostupne <u>zastavice</u> koje ste pronašli.


Nasao na wikipediji:
```
-n	Disables word wrap, allowing the cow to speak FIGlet or to display other embedded ASCII art. Width in columns becomes that of the longest line, ignoring any value of -W. Only works with text from stdin.
-W	Specifies width of the speech balloon in columns, i.e. characters in a monospace font. Default value is 40.
-b	“Borg mode”, uses == in place of oo for the cow′s eyes.
-d	“Dead”, uses XX, plus a descending U to represent an extruded tongue, also used on Linux kernel oops.
-g	“Greedy”, uses $$.
-p	“Paranoid”, uses @@.
-s	“Stoned”, uses ** to represent bloodshot eyes, plus a descending U to represent an extruded tongue.
-t	“Tired”, uses --.
-w	“Wired”, uses OO.
-y	“Youthful”, uses .. to represent smaller eyes.
-e eye_string	Manually specifies the cow′s eye-type, e.g. cowsay -e ^^ (see Eastern-style emoticon).[5]
-T tongue_string	Manually specifies the cow′s tongue shape, e.g. cowsay -T \(\) for a pair of parentheses.[5]
-f cowfile	Specifies a .cow file from which to load alternative ASCII art. Accepts both absolute file-paths and those relative to the environment variable COWPATH.
-l	Lists the names of available cow-files in the COWPATH directory instead of displaying a quote.

```



10. Jednom kad ste pronašli odgovarajuće zastavice, nadogradite vašu _bash_ skriptu tako da korisnik može proslijediti i jednu od odgovarajućih zastavica kao drugi argument skripte, a ako proslijedi neispravnu zastavicu, ispišite grešku i prekinite izvođenje skripte; ako korisnik proslijedi ispravnu zastavicu, proslijedite ju `cowsay` naredbi. _Hint:_ _bash lista i par IF-ova ili petlja će vam biti od pomoći._


```bash
#/bin/bash

if [[ $# -ne 2  ]]; then
echo 'Potrebno je unijeti 2  argumenta'
exit 1
fi

# prema primjeru prvo ide poruka pa zastavica
poruka=$1
zastavica=$2

# polje

zastavice=("-b" "-d" "-g" "-p" "-s" "-t" "-w" "-y")
ispravna=false

for zast in "${zastavice[@]}"; do
	if [[ "$zast" == "${zastavica}" ]];then
		ispravna=true
		break
	fi
done

if [[ "$ispravna" == false ]];then
	echo "Unesena zastavica nije podrzana"
	exit 2
fi

cowsay "$zastavica" "$poruka"

```



```bash
vilibald-kovac@vili-server:~/node_project$ ./cowsay_skripta.sh "Hvala za zabavnu vjezbu!" -b
 __________________________
< Hvala za zabavnu vjezbu! >
 --------------------------
        \   ^__^
         \  (==)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
vilibald-kovac@vili-server:~/node_project$

```


