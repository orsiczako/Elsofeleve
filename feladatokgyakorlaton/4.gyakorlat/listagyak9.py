import random
paratlan=[]
paros=[]
lista=[]
n = int(input("Add meg hány eleme legyen a listának!:"))
for i in range(n):
    lista.append(random.randint(1,10))
    print(lista[i])
    
print(lista)
osszeg=0
legkisebb= None
legnagyobb=None
osszes=True
for i in range(n):
    osszeg+=lista[i]
for i in range(n):
    if legnagyobb is None or lista[i]>legnagyobb:
        legnagyobb=lista[i]
    if legkisebb is None or lista[i]<legkisebb:
        legkisebb= lista[i]
    if lista[i] % 2 != 0:
        osszes=False
for i in range(n):
    if lista[i]%2==0:
        paros.append(lista[i])
        paros.sort()
    else:
        paratlan.append(lista[i])
        paratlan.sort(reverse=True)

par =' '
if osszes==False:
    par = "Van"
else:
    par ="Nincs"
print("Összeg:",osszeg," Legkisebb:",legkisebb,"Legnagyobb:",legnagyobb, "Van-e páratlan?:",par)
print("Páratlanok:",paratlan,"Párosak:",paros)