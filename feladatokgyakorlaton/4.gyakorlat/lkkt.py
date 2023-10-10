sor = input()
darabolt = sor.split(' ')
a = int(darabolt[0])
b = int(darabolt[1])

while a%b!=0:
    r = a%b
    a = b
    b = r

lkkt = (a*b)/b
print(lkkt)