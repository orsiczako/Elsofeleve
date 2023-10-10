egyik = int(input("egyik: "))
masik = int(input("masik: "))
if egyik == masik:
    print("egyenlőek")
else:
    print("nem egyenlőek")
    if egyik>masik:
        print(egyik, "nagyob mint",masik)
    else:
        print(masik,"nagyobb, mint",egyik)