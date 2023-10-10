lista = []
def fuggveny (szo):
    maganh = 'aáeéöőoóüűuúií'
    ujszo =''
    for char in szo:
        if char not in maganh:
            ujszo +=char
    return ujszo
"""Ahelyett, hogy az eredeti szavakkal baszkodtam volna inkább újakat csináltam,
fogtam magam egy változóban eltároltam az összes olyan magánhangzót, ami semmiképpen sem lehet majd benne
az új szavamban aztán létrehoztam magának az új szónak egy változót. Ezutan a megadott szón
amit a felhasználó adott meg tehát még az OG szón, betűnként végigmentem,
és azt mondta, hogy amennyiben az a karakter, amin a ciklusom éppen van, nem szerepel,
a változóban eltárolt betűk között, akkor azt az adott betűt adja hozzá a zsír új váltózómhoz"""

"""És ez lesz majd a visszatérési érték, azután meg lazán faszán megadtam meddig menjen
a ciklusom és mivel lista buzi vagyok abban eltároltam ezeket majd kivágtam és bim bam bum"""

while True:
    szo = input()
    try:
        
        ujszo = fuggveny(szo)
        lista.append(ujszo)
          
    except EOFError:
        print(lista)
        break

"""szo = input()
    if szo != "EOF":
        ujszo = fuggveny(szo)
        lista.append(ujszo)
          
    else:
        print(lista)
        break"""