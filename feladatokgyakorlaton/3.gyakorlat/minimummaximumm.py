#MINIMUM KIVÁLASZTÁS
print("Minimum:")
n = int(input())
#EZ A VÁLTOZÓ ADJA MEG, HOGY PONTOSAN HÁNY SZÁMOT OLVASUNK BE
minimum = None
#A RANGE UTÁN LÉVŐ N-NEL MEGSZABJUK, HOGY EGÉSZEN ADDIG MENJEN AMELYIK SZÁMOTN MEGADTUK, ÉS ADDIG OLVASSON BE ÉRTÉKET
for i in range(n):
    adott=int(input())
    if minimum is None or adott<minimum:
        minimum=adott
print(minimum)     
#MAXIMU KIVÁLASZTÁS
print("Maximum:")
m = int(input())
#EZ A VÁLTOZÓ ADJA MEG, HOGY PONTOSAN HÁNY SZÁMOT OLVASUNK BE
maximum= None
#A RANGE UTÁN LÉVŐ N-NEL MEGSZABJUK, HOGY EGÉSZEN ADDIG MENJEN AMELYIK SZÁMOTN MEGADTUK, ÉS ADDIG OLVASSON BE ÉRTÉKET
for i in range(m):
    adottt=int(input())
    if maximum is None or adottt>maximum:
        maximum=adottt

print(maximum)
#"""SZAVAKKAL: miután megadtuk, hogy meddig menjen el a ciklus annyiszor futott le
#ergo ahányszor lefutott annyiszor tudunk megadni egy számot
#"""aztán azt mondtuk neki, hogy amennyiben a minimum, ami egyelőre még nem rendelkezik értékkel
# még mindig nem rendelkezik értékkel vagy , amit megadtunk neki érték az kisebb, akkor töltse fel
# a minimum változót azzal az értékkel ahol éppen jár
# ha a minimumban még nincs semmi, de az első érték amivel találkozik az 2, akkor a minimum megkapja a 2-t mint érték
# viszont, ha a következő már -4, akkor teljesül a feltétel, és kicseréli, ám, ha a -4 után mondjuk 5 jön,
# akkor nem teljesül a feltétel és marad -4-ként, de már túl van amúgy magyarázva"

eredmenyek=[]
while True:
    pontszam = int(input())
    if pontszam == -1:
        break
    
    if  80<=pontszam:
        eredmenyek.append("Jeles")
    elif 70<=pontszam<80:
        eredmenyek.append("Jó")
    elif 60<=pontszam<70:
        eredmenyek.append("Közepes")
    elif 50<=pontszam<60:
        eredmenyek.append("Elégséges")
    elif pontszam<50:
        eredmenyek.append("Elégtelen")
        
for eredmenyek in eredmenyek:
    print(eredmenyek)
    
#EZ AZ ÁTLAGOS BASZÁS
#A VÁLTOZÓ, AMI MEGADJA, HOGY MEDDIG MENJEN  A CIKLUS:
k = int(input())
atlag =0
for i in range(k):
    ad= int(input())
    atlag += ad

if k != 0:
    atlag /= k  # Átlag számítása (osztjuk a darabszámmal)
    print(atlag)  

