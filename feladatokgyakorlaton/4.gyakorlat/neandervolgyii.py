lista = []
while True:
    
    szamok = input()
    darabolt = szamok.split()
    if szamok == "EOF":
        
        break;
    csokken = False
    no = False
    for i in range(1,len(darabolt)):
        if darabolt[i]>darabolt[i-1]:
            no = True
            csokken = False
        elif darabolt[i]<darabolt[i-1]:
            csokken = True
            no = False
        
        else:
            csokken = False
            no = True
        
        if csokken ==True or  no==True:
            lista.append("TRUE")
            break;
        elif darabolt[i]==darabolt[i-1]:
            lista.append("FALSE")
        else:
            lista.append("FALSE")

for i in lista:
    print(i)

"""MAXIMUM KIVÁLASZTÁS: LISTÁBA ELEMEK MAJD RÁNYOMUNK EGY MAXOT, 
EZ IS ELFOGADHATÓ, ÁTVÁLTÁSOK, EZ 30 PERC, SZÁMOLÓGÉPET NEM LEHET HASZNÁLANI,
HOL VAN SZEMANTIKAI, SZINTAKTIKAI HIBA, PAPÍRON FOGUNK PROGRAMOZNI, CIKLUST ÁTÍRNI
PYCHARMBAN KELL MAJD PROGRAMOZNI, CERUZÁT,RADÍRT VIGYÉL,LESZNEK 3JEGYŰ SZÁMOK BENNE, 
MI A KIIRATAS EREDMENYE, MIT CSINÁL AZ ALÁBBI KÓD RÉSZLET, ÍRDD ÁT ÚGY A FOR CIKLUST HOGY WHILE CIKLUS LEGYEN
ÉS UGYANÚGY MŰKÖDJÖN
PL: FOR I IN RANGE(0,15,2):
   IF I ==9
   CONTINUE
PRINT(I**ˇ2)

WHILE I<15:
  IF I ==10
  CONTINUE
  PRINT(I**2)
  I +=2"""

