n = int(input("n = "))
osszeg = 0
while n != 0: 
 osszeg += n % 10
n = n // 10

print("Számjegyek összege = ", osszeg)