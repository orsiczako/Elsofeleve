ev = int(input("Add meg az évet:"))
honap = int(input("Add meg a hónapot!"))
match honap:
    case 1|3|5|7|8|10|12:
        print("31 napos")
    case 4|6|9|11:
        print("30 napos")
    case 2:
        if ev%4==0:
            print("29 napos")
        else:
            print("28 napos")
    case _:
     print("Hibás adat!")

