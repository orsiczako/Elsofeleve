lista = []
nagybetuk = 'ÖÜÓQWERTZUIOPŐÚASDFGHJKLÉÁŰÍYXCVBNM'
print("Adj meg szavakat nagybetűkkel!")
while True:
    
    
        szavak = input()
        ujszo = ''

        
        if szavak !="END":
            for char in szavak:
             if char in nagybetuk:
                ujszo += char * 2
             else:
                ujszo += char
         
            lista.append(ujszo)
        
        else:
          print(lista)
          break
         
        
        
       
    
    
  
    

             

        



#Az előző feladat logikájából kiindulva megint új szavakat hoztam létre, megint végigmentem karakterenként a megadott szavakon
#és megint megmondta, hogy ha a nagybetűk között szerepel az adott karakter aminél épp tart a ciklusom, akkor a változómhoz
#duplán adja hozzá, ha viszont nem akkor csak simán egyszer írja le újból és tárolja el abban a gecis változóban és bim bam bum