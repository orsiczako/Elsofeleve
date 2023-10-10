sor = input()
s = sor.split(" ")
a = int(s[0])
b = int(s[1])
while a != b:
   if a > b:
     a = a-b

   else:
    b = b-a

if a ==1:

   print("IGEN")
else:
  print("NEM")