minimum = 0
maximum = 0
lista =[]
while True:
    n = int(input())
    if n!=0:
        lista.append(n)
    else:
        break;

for i in lista:
    if i<minimum:
        minimum = i
    if i>maximum:
        maximum =i
    

print("Minimum:",minimum, "Maximum:",maximum)