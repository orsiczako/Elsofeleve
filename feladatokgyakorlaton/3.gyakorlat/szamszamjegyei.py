n = int(input("Adj meg egy számot"))
osszeg=0
"""for char in n:
    osszeg+=1

print(osszeg)"""

#vagy

while n !=0:
    osszeg = osszeg+1
    n = n//10

print(osszeg)
