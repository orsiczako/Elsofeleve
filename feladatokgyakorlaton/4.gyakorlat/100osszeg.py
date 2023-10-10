osszeg=0
paros=0
paratlan=0
while True:
    if osszeg>100:
        
        break
    n = int(input())
   
    
    osszeg+=n
    if n%2==0:
        paros=paros+1
    if n%2==1:
        paratlan=paratlan+1

print("Összeg:",osszeg,"Páros:",paros,"Páratlan:",paratlan)

