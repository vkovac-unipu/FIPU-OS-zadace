

# Zadatak 1

1. **Provjerite trenutni radni direktorij**

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % pwd
/Users/vilistudyuser/Vili/College Files/Pula/2semestar/OS/Github/FIPU-OS-zadace/OS-1zadaca

```

2. **Izlistajte sadržaj trenutnog radnog direktorija**

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % ls
NaredbeZadaca.md

```

3. **Napravite novi direktorij vjezba1 i prebacite se u njega**

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % mkdir vjezba1 && cd vjezba1
vilistudyuser@Wills-MacBook-Pro vjezba1 %

```

4. **Unutar direktorija vjezba1 napravite novu datoteku README.md**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba1 % touch README.md

```

5. **Vratite se u početni radni direktorij**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba1 % cd ..
vilistudyuser@Wills-MacBook-Pro OS-1zadaca %
```
# Zadatak 2 

1. **Napravite praznu datoteku file.txt unutar direktorija vjezba2**

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % cd vjezba2 && touch file.txt

```

2. **Kopirajte datoteku file.txt u direktorij vjezba2 i nazovite ju file_copy.txt**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba2 % cp file.txt file_copy.txt

```

3. **Ispišite sve datoteke unutar direktorija vjezba2**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba2 % ls
file_copy.txt   file.txt

```

4. **Obrišite datoteku file.txt i vratite se u početni radni direktorij**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba2 % rm file.txt && cd ..

```

5. **Pokušajte izbrisati direktorij vjezba2 . Zašto ne možete?**
Ne mogo jer nije preazan.

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % rmdir vjezba2
rmdir: vjezba2: Directory not empty

```

---

# Zadatak 3

1. **Napravite novi direktorij vjezba3 i unutar njega direktorij backup**

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % mkdir vjezba3 && mkdir vjezba3/backup
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % ls
OS-1zadaca_Koraci.md	vjezba2
vjezba1			vjezba3
```

2. **Unutar direktorija vjezba3 napravite 3 datoteke: notes.txt , todo.txt i script.sh**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba3 % touch notes.txt todo.txt script.sh
vilistudyuser@Wills-MacBook-Pro vjezba3 % ls
backup		notes.txt	script.sh	todo.txt

```

3. **Kopirajte sve datoteke iz direktorija vjezba3 u direktorij backup**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba3 % cp notes.txt script.sh todo.txt backup
vilistudyuser@Wills-MacBook-Pro vjezba3 % cd backup && ls
notes.txt	script.sh	todo.txt
vilistudyuser@Wills-MacBook-Pro backup % 


```

4. **Izbrišite samo datoteku script.sh iz direktorija vjezba3 i ispišite sve datoteke**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba3 % ls && rm script.sh&& ls
backup		notes.txt	script.sh	todo.txt
backup		notes.txt	todo.txt

```

5. **U backup dodajte još jedan direktorij koju ćete imenovati USER varijablom**

```bash
vilistudyuser@Wills-MacBook-Pro backup % mkdir $USER
vilistudyuser@Wills-MacBook-Pro backup % ls
notes.txt	script.sh	todo.txt	vilistudyuser
vilistudyuser@Wills-MacBook-Pro backup % 

```

6. **Premjestite sve datoteke iz direktorija backup u direktorij nazvan varijablom USER**

```bash
vilistudyuser@Wills-MacBook-Pro backup % ls
notes.txt	script.sh	todo.txt	vilistudyuser
vilistudyuser@Wills-MacBook-Pro backup % mv notes.txt script.sh todo.txt vilistudyuser
vilistudyuser@Wills-MacBook-Pro backup % ls && cd vilistudyuser && ls
vilistudyuser
notes.txt	script.sh	todo.txt

```

---

# Zadatak 4

1. **Napravite novi direktorij vjezba4 i unutar njega direktorij subfolder**

```bash
# -p je parent, omogucava da napravimo vise direktorija odjednom 
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % mkdir -p vjezba4/subfolder
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % ls
OS-1zadaca_Koraci.md	vjezba2			vjezba4
vjezba1			vjezba3

```

2. **Unutar direktorija vjezba4 napravite datoteku prema nazivu varijable HOSTNAME**

Prvo mi nije radilo. 
```bash
vilistudyuser@Wills-MacBook-Pro vjezba4 % touch $HOSTNAME
usage: touch [-A [-][[hh]mm]SS] [-achm] [-r file] [-t [[CC]YY]MMDDhhmm[.SS]]
       [-d YYYY-MM-DDThh:mm:SS[.frac][tz]] file ...
vilistudyuser@Wills-MacBook-Pro vjezba4 % touch $hostname
usage: touch [-A [-][[hh]mm]SS] [-achm] [-r file] [-t [[CC]YY]MMDDhhmm[.SS]]
       [-d YYYY-MM-DDThh:mm:SS[.frac][tz]] file ...
vilistudyuser@Wills-MacBook-Pro vjezba4 % HOSTNAME=$(hostname)
vilistudyuser@Wills-MacBook-Pro vjezba4 % touch $HOSTNAME

```

3. **Preimenujte novoizrađenu datoteku prema nazivu varijable USER**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba4 % mv Wills-MacBook-Pro.local $USER
vilistudyuser@Wills-MacBook-Pro vjezba4 % ls
subfolder	vilistudyuser
vilistudyuser@Wills-MacBook-Pro vjezba4 % 

```

4. **Premjestite datoteku USER u direktorij subfolder**

```bash
vilistudyuser@Wills-MacBook-Pro vjezba4 % mv vilistudyuser subfolder 
vilistudyuser@Wills-MacBook-Pro vjezba4 % cd subfolder && ls
vilistudyuser
vilistudyuser@Wills-MacBook-Pro subfolder % 


```

5. **Izbrišite datoteku USER koristeći apsolutnu putanju**

```bash
vilistudyuser@Wills-MacBook-Pro subfolder % pwd
/Users/vilistudyuser/Vili/College Files/Pula/2semestar/OS/Github/FIPU-OS-zadace/OS-1zadaca/vjezba4/subfolder
vilistudyuser@Wills-MacBook-Pro subfolder % rm "/Users/vilistudyuser/Vili/College Files/Pula/2semestar/OS/Github/FIPU-OS-zadace/OS-1zadaca/vjezba4/subfolder/vilistudyuser"
vilistudyuser@Wills-MacBook-Pro subfolder % ls
vilistudyuser@Wills-MacBook-Pro subfolder % 

```
