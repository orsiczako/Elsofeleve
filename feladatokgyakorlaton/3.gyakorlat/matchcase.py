n = int(input("Add meg a pontszámot!: "))
match n:
    case 1:
        print("Elégtelen.")
    case 2:
        print("Elégéges")
    case 3:
        print("közepes")
    case 4:
        print("Jó")
    case 5:
        print("Ötös")
    case _:
    
        print("hibás adat")

