osszeg = 0
hanyan = 0

while True:
    adat = input()
    if adat =="EOF":
      break;
    
    nev, *penz = adat.split(":")
    savings = list(map(int, penz[0].split()))
        
    osszeg += sum(penz)
        
    if all(s >= 20 for s in penz):
            hanyan += 1
    
    

print(osszeg)
print(hanyan)
