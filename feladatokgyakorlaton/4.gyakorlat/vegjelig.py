pozitiv=0
negativ=0
while True:
    n = int(input())
    if n !=0:
        if n<0:
            negativ+=1
        elif n>0:
            pozitiv+=1

    else:
        break;

print("Pozitív:",pozitiv,"Negatív:",negativ)
    
      