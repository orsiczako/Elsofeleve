ev = int(input("év: "))
hónap = int(input("hónap:"))
if ev%4==0 and hónap==2:
    print("29")
else:
    if hónap==1 or hónap == 3 or hónap == 5 or hónap == 7 or hónap == 8 or hónap == 10 or hónap ==12:
        print("31")
    elif hónap==2:
        print("28")
    else:
        print("30")
