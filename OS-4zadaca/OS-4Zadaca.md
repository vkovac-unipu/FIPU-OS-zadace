# 4 Zadaca - Operacijski sustavi
Vilibald Kovac <br>
informatika (online) <br>
0303126466

---

## Instalacija

 1. **Preuzmite i instalirajte** VirtualBox na svoje računalo. ✅
 2. **Preuzmite i instalirajte** Ubuntu Server (LTS verziju) te **izradite novi virtualni stroj**.  
   Tijekom instalacije Ubuntu Servera, za `username` unesite svoje ime i prezime u formatu: `ime.prezime`. ✅

3. Nakon instalacije, **napravite _screenshot_ početnog zaslona** Ubuntu Servera na kojem se jasno vidi vaše korisničko ime i naziv virtualnog stroja.



<img src="image-11.png" width="400">

## 2. **Za svaki od sljedećih zadataka napravite odgovarajući _screenshot_:**

- Ažurirajte lokalnu listu dostupnih paketa i verzija te nadogradite sve pakete na najnovije verzije.

<img src="image-1.png" width="400">

- Instalirajte paket `openssh-server`, pokrenite SSH poslužitelj i provjerite njegov status.

<img src="image-2.png" width="350"> <img src="image-3.png" width="350">

- Pronađite IP adresu virtualnog stroja i provjerite koji su mrežni portovi otvoreni.  

Ip adresu mozemo naci sa naredbom `ip a` ili `hostname -I`
<img src="image-4.png" width="400">

- _Kako ćete provjeriti koji port koristi SSH poslužitelj?_ 
Mozemo vidjeti port u statusu SSH posluzitelja ili pomocu `ss -tuln`

<img src="image-5.png" width="400">

- Povežite se na SSH poslužitelj putem SSH klijenta na dva načina:
  - korištenjem **NAT adaptera i _port forwardinga_**

<img src="image-6.png" width="400">
<img src="image-7.png" width="400">

  - korištenjem **Bridged adaptera**

<img src="image-8.png" width="400">

## 3. Skripta 

Putem domaćina, **izradite novu bash skriptu** unutar virtualnog stroja, u direktoriju `/home/username/`. Skripta treba napraviti **detaljan ispis svih datoteka** (uključujući skrivene) iz korijenskog direktorija VM-a (`/`).

Screenchot terminala domacina: <br>
<img src="image-10.png" width="400" height="400">
<br><br>
Screnshot iz VM-a:<br><br>
<img src="image-9.png" width="400">