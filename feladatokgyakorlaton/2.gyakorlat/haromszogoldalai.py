import math

elso = int(input("Első szám:"))
masodik= int(input("második:"))
harmadik=int(input("harmadik:"))
s=0
eredmeny=0
if elso+masodik>harmadik and masodik+harmadik>elso and harmadik+elso>masodik:
    print("szerkeszthető")
    s = (elso+masodik+harmadik)/2
    eredmeny=math.sqrt(s*(s-elso)*(s-masodik)*(s-harmadik))
    print(round(eredmeny,2))

else:
    print("nem szerkeszthető")