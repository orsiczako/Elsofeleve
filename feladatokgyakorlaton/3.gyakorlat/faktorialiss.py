n = int(input("Szám:"))
osszeg= 1
for i in range(1,n):
    osszeg+=osszeg*(i)
print(osszeg)