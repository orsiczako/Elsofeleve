import random
n = int(input())+1
p =1
for i in range(n):
    szam = random.randint(1,10)
    print("Szám:",szam)
    p = p*szam
    

print(p)