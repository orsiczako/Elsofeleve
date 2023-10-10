n = int(input("Eddig menjen:"))
osszeg=0
for i in range(n):
    szam = int(input())
    if szam %2==0 and szam>0:
        osszeg +=+1

print (osszeg)