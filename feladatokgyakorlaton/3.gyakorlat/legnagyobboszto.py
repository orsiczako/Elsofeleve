n = int(input("n = "))
valodi = 1
for i in range(2, n):
   if n % i == 0:
      valodi = i
if valodi == 1:
     print("Prímszám!")
else:
     print("Legnagyobb valódi osztó: ", valodi)
