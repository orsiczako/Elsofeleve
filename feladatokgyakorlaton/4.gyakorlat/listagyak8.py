import random
lista=[]
valt =0
while True:
    valt =0
    for i in range(len(lista)):
        if i==10:
            break
    
    if random.randint(1,10)%2==0:
        lista.append(random.randint(1,10))

print(lista)
