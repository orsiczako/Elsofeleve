def szamolo(x,jel,y):
    if jel=="+":
        return x+y
    elif jel =="-":
        return x-y
    elif jel=="/":
        if y==0:
            print("Nem oszhatsz 0-val")
        else:
            return x/y
    elif jel=="%":
        if y==0:
            print("Nem oszhatsz 0-val")
        else:
            return x%y
    elif jel =="*":
        return x*y

egyenlet = input("Adj meg egy egyenletet:")
egyenletdarabok=egyenlet.split()
x = int(egyenletdarabok[0])
jel = egyenletdarabok[1]
y= int(egyenletdarabok[2])
vegeredmeny = szamolo(x,jel,y)
print(vegeredmeny)


    

