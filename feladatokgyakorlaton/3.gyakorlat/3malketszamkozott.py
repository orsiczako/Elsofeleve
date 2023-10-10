elso = int(input("a: "))
masod = int(input("b: "))
szamok=0
for i in range(masod):
    if elso+1<=i<=masod and i%3==0:
        szamok+=i

print("Az összegük:",szamok)        
    
    
        
