import math

a = int(input("a: "))
b = int(input("b: "))
c = int(input("c: "))
eredmeny1=0
eredmeny2 =0
determinans = b**2-4*a*c
if determinans >=0:
    eredmeny1 = (-b+math.sqrt(determinans))/(2*a)
    eredmeny2 = (-b-math.sqrt(determinans))/(2*a)
    eredmeny1 = round(eredmeny1,2)
    eredmeny2 = round(eredmeny2,2)
    print("x1:",eredmeny1,"x2: ",eredmeny2)
else:
    print("nincs eredménye")

