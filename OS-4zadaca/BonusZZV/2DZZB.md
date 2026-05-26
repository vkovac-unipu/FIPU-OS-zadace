## Zadaci za vježbu: OS4 - Rad na Virtualnom stroju

### Zadatak 2: Git - the information manager from hell 🔥


Student: Vilibald Kovac
online studij informatike


1. Instalirajte `git` na vašem Ubuntu serveru i provjerite verziju. GitHub platforma nastala je nekoliko godina kasnije s ciljem pružanja jednostavnijeg načina upravljanja projektima i suradnje, a kolaboracija se temelji na `git`-u. Samim time, i `git` kao paket je dostupan na GitHub platformi - `https://github.com/git/git.git`, skupa sa cijelom svojom povijesti verzioniranja.


```bash
vilibald-kovac@vili-server:~/node_project$ sudo apt install git
git is already the newest version (1:2.53.0-1ubuntu1).
git set to manually installed.
Summary:
  Upgrading: 0, Installing: 0, Removing: 0, Not Upgrading: 0
vilibald-kovac@vili-server:~/node_project$

```

2. Prebacite se u home direktorij na VM-u; naredbom `git clone <web_poveznica>` preuzmite `https://github.com/git/git.git` repozitorij s GitHub-a.


```bash
vilibald-kovac@vili-server:~$ cd ~
vilibald-kovac@vili-server:~$ pwd
/home/vilibald-kovac
vilibald-kovac@vili-server:~$ ls
dobrodosli.txt  node_project  skripta_dz4.sh
vilibald-kovac@vili-server:~$ git clone https://github.com/git/git.git
Cloning into 'git'...

```


3. Provjerite je li repozitorij uspješno preuzet te se prebacite u preuzeti direktorij. Svako dodavanje sadržaja (ažuriranje datoteka) u repozitorij se naziva _commit_, a verzioniranje nam omogućuje da se vratimo na prethodnu verziju projekta u bilo kojem trenutku. Uz svaki _commit_, dodaje se i poruka koja opisuje što je promijenjeno (_eng. commit message_). U CLI-u, otvorite _manual_ `git` paketa i proskrolajte do odjeljka `HIGH-LEVEL-COMMANDS` - pronađite naredbu koja će ispisivati _logove_ (povijest) svih _commit_-ova.

_Hint:_ Unutar _manuala_ možete pretraživati ključne riječi tako što pritisnete `/`, upišete ključnu riječ i pritisnete `Enter`. Da biste se kretali kroz rezultate pretraživanja, koristite `n` za sljedeći rezultat i `N` za prethodni rezultat.


```bash
vilibald-kovac@vili-server:~/git$ git status
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean
```

4. Jednom kad ste pronašli odgovarajuću naredbu, pokušajte ispisati sve _commit_-ove unutar repozitorija. Vidjet ćete da su poredani po vremenu, od najnovijeg prema najstarijem. Vaš zadatak je pronaći prvi _commit_ i njegovu poruku koju je Linus Torvalds napisao davne 2005. godine. Otvorite _manual_ `git` paketa i pronađite zastavicu koja će vam omogućiti da ispišete _logove_ obrnutim redoslijedom.


```bash
# ispisuje sve logove
vilibald-kovac@vili-server:~/git$ git log
```


```bash
vilibald-kovac@vili-server:~/git$ git log --reverse
commit e83c5163316f89bfbde7d9ab23ca2e25604af290
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu Apr 7 15:13:13 2005 -0700

    Initial revision of "git", the information manager from hell

```


5. Povezivanje na VM putem SSH možemo učiniti i nešto zanimljivijim, npr. zašto ne bismo korisniku napisali neku poruku dobrodošlice svaki put kad se poveže, da nije smo onaj dosadni _Welcome to Ubuntu_ zaslon...



6. Unutar _home_ direktorija napravite novi direktorij proizvoljnog naziva i prebacite se u njega. Unutar njega napravite novi `node` projekt koristeći naredbu `npm init -y`. Ova naredba će napraviti `package.json` datoteku koja sadrži osnovne informacije o `node` projektu i prihvatiti zadane konfiguracijske postavke. Otvorite ju pomoću CLI uređivača i pod `"author"` ključ unesite svoje ime i prezime. Spremite datoteku i zatvorite uređivač.

```bash
vilibald-kovac@vili-server:~/welcome_screen$ micro package.json
vilibald-kovac@vili-server:~/welcome_screen$ cat package.json
{
  "name": "welcome_screen",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "Vilibald Kovac",
  "license": "ISC"
}
vilibald-kovac@vili-server:~/welcome_screen$
```


7. Koristeći `npm` naredbu, instalirajte paket `greetings`. Sintaksa je: `npm install <ime_paketa>`; stvorite novu JavaScript datoteku, npr. `welcome.js` i u nju upišite sljedeći kod:

```bash

vilibald-kovac@vili-server:~/welcome_screen$ man npm
vilibald-kovac@vili-server:~/welcome_screen$ npm install greetings

added 3 packages, and audited 4 packages in 1s

found 0 vulnerabilities
vilibald-kovac@vili-server:~/welcome_screen$ micro welcome.js
vilibald-kovac@vili-server:~/welcome_screen$ cat welcome.js
const greet = require("greetings");
console.log(greet());
vilibald-kovac@vili-server:~/welcome_screen$

```


Unutar istog direktorija dodajte novu `bash` skriptu. Bash skripta treba ispisati poruku dobrodošlice za trenutnog korisnika kombiniranjem Unix varijable `$USER` i pozivanjem `welcome.js` JavaScript datoteke. Na primjer, ako je trenutni korisnik `markomaric`, skripta može ispisati: `Yo markomaric` ili `Hey markomaric`.


```Bash
vilibald-kovac@vili-server:~/welcome_screen$ micro welcome_script.sh
vilibald-kovac@vili-server:~/welcome_screen$ chmod +x welcome_script.sh
vilibald-kovac@vili-server:~/welcome_screen$ cat welcome_script.sh
#!/bin/bash

echo "$(node welcome.js)" "$USER"


vilibald-kovac@vili-server:~/welcome_screen$
```


8.  Potrebno je još samo pozvati bash skriptu prilikom prijave na VM. To možete napraviti na 2 načina:

- dodavanjem poziva skripte u `~/.bashrc` datoteku
- dodavanjem poziva skripte u `~/.ssh/rc` datoteku

Nakon dodavanja, možete restartati VM i shell sesiju ili ponovno učitati konfiguracijske datoteke koristeći `source ~/.bashrc` odnosno `source ~/.ssh/rc`.


```bash
vilibald-kovac@vili-server:~/welcome_screen$ source ~/.bashrc
Hey vilibald-kovac

```
9. Povežite se na VM putem SSH-a i provjerite ispisuje li se poruka dobrodošlice s vašim imenom (za povezivanje odaberite mrežni adapter po izboru).

```bash
Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


Last login: Tue May 26 21:36:32 2026 from 192.168.1.176
Salute vilibald-kovac
vilibald-kovac@vili-server:~$
```