menu = True
while menu == True:
    menu = False
    choice = int(input("1: Groceries"'\n'"2: Entertainment"'\n'"3: Travel"'\n'"4: Rent"))
    if choice == 1:
        groceries = []
        money_gro = float(input("How much have you spent on Groceries?"))
        groceries.append(money_gro)
        print ('Groceries expenses', groceries)
        back = input("Do you want to go back to the menu?")
        if back == 'Yes' or 'yes' or 'y':
            menu = True
        else:
            print("Goodbye")
    elif choice == 2:
        entertainment = []
        money_enter = float(input("How much have you spent on Entertainment?"))
        entertainment.append(money_enter)
        print ('Entertainment expenses', entertainment)
        back = input("Do you want to go back to the menu?")
        if back == 'Yes' or 'yes' or 'y':
            menu = True
        else:
            print("Goodbye")
    elif choice == 3:
        travel = []
        money_tra = float(input("How much have you spent on Travel?"))
        travel.append(money_tra)
        print ('Travel expenses', travel)
        back = input("Do you want to go back to the menu?")
        if back == 'Yes' or 'yes' or 'y':
            menu = True
        else:
            print("Goodbye")
    elif choice == 4:
        rent = []
        money_ren = float(input("How much have you spent on Rent?"))
        rent.append(money_ren)
        print ('Rent expenses', rent)
        back = input("Do you want to go back to the menu?")
        if back == 'Yes' or 'yes' or 'y':
            menu = True
        else:
            print("Goodbye")
    else:
        print("Invalid Choice")
        menu = True
