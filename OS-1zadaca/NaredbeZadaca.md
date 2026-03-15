
Zadaci za Vježbu 1
1. Provjerite trenutni radni direktorij

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % pwd
/Users/vilistudyuser/Vili/College Files/Pula/2semestar/OS/Github/FIPU-OS-zadace/OS-1zadaca
```

2. Izlistajte sadržaj trenutnog radnog direktorija
```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % ls
NaredbeZadaca.md
```

3. Napravite novi direktorij vjezba1 i prebacite se u njega

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % mkdir vjezba1 && cd vjezba1
vilistudyuser@Wills-MacBook-Pro vjezba1 % 
```


4. Unutar direktorija vjezba1 napravite novu datoteku README.md

```bash
vilistudyuser@Wills-MacBook-Pro vjezba1 % touch README.md
```



5. Vratite se u početni radni direktorij

```bash
vilistudyuser@Wills-MacBook-Pro vjezba1 % cd ..
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % 
```


6. Napravite praznu datoteku file.txt unutar direktorija vjezba2

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % cd vjezba2 && touch file.txt
vilistudyuser@Wills-MacBook-Pro vjezba2 % 
```


7. Kopirajte datoteku file.txt u direktorij vjezba2 i nazovite ju file_copy.txt
```bash
vilistudyuser@Wills-MacBook-Pro vjezba2 % cp file.txt file_copy.txt
vilistudyuser@Wills-MacBook-Pro vjezba2 % 
```


8. Ispišite sve datoteke unutar direktorija vjezba2

```bash
vilistudyuser@Wills-MacBook-Pro vjezba2 % ls
file_copy.txt   file.txt
```

9.  Obrišite datoteku file.txt i vratite se u početni radni direktorij
```bash
vilistudyuser@Wills-MacBook-Pro vjezba2 % rm file.txt && cd ..
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % 
```
10. Pokušajte izbrisati direktorij vjezba2 . Zašto ne možete?

Ne mogo jer nije preazan.

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % rmdir vjezba2
rmdir: vjezba2: Directory not empty
```

11. Napravite novi direktorij vjezba3 i unutar njega direktorij backup

```bash
vilistudyuser@Wills-MacBook-Pro OS-1zadaca % mkdir vjezba3 && mkdir vjezba
3/backup
```

12. Unutar direktorija vjezba3 napravite 3 datoteke: notes.txt , todo.txt i script.sh

```bash
vilistudyuser@Wills-MacBook-Pro vjezba3 % touch notes.txt todo.txt script.
sh
vilistudyuser@Wills-MacBook-Pro vjezba3 % ls
backup          notes.txt       script.sh       todo.txt
```
13. Kopirajte sve datoteke iz direktorija vjezba3 u direktorij backup

```bash
vilistudyuser@Wills-MacBook-Pro vjezba3 % cp notes.txt script.sh todo.txt backup 
```

14. Izbrišite samo datoteku script.sh iz direktorija vjezba3 i ispišite sve datoteke
```bash
vilistudyuser@Wills-MacBook-Pro vjezba3 % rm script.sh && ls
backup          notes.txt       todo.txt
```

15. U backup dodajte još jedan direktorij koju ćete imenovati USER varijablom
```bash

vilistudyuser@Wills-MacBook-Pro vjezba3 % cd backup 
vilistudyuser@Wills-MacBook-Pro backup % mkdir USER
vilistudyuser@Wills-MacBook-Pro backup % ls
USER		notes.txt	script.sh	todo.txt
```
16. Premjestite sve datoteke iz direktorija backup u direktorij nazvan varijablom USER

```bash
vilistudyuser@Wills-MacBook-Pro backup % mv notes.txt script.sh todo.txt USER/
vilistudyuser@Wills-MacBook-Pro backup % cd USER && ls
notes.txt	script.sh	todo.txt

```
17. Napravite novi direktorij vjezba4 i unutar njega direktorij subfolder
18. Unutar direktorija vjezba4 napravite datoteku prema nazivu varijable HOSTNAME
19. Preimenujte novoizrađenu datoteku prema nazivu varijable USER
20. Premjestite datoteku USER u direktorij subfolder
21. Izbrišite datoteku USER koristeći apsolutnu putanju