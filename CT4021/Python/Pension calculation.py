# works out what the users pension will be when they retire
def pension(age,years,current,start):
    amount = 0
    econtri = int(input("As a % how much of your salary do you contribute to your pension?"))
    ocontri = int(input("How much does you organisation contribute as a % of your salary?"))
    gross = int(input("What is the % increment per year?"))
    gender = input("Male or Female?")
    if gender == "Male" or "male":
        retire = 65 - age
        while retire > 0:
            permonth = current *(econtri/100)
            amount += permonth
            org = start*(ocontri*100)
            amount +=org
            inc = current + (current*(gross/100))
            amount +=inc
            total = amount
            retire -=1
        print("When you retire your pension will be: £", round(total,2))
    elif gender =="Female" or "female":
        retire = 63 - age
        while retire > 0:
            permonth = current *(econtri/100)
            amount += permonth
            org = start*(ocontri*100)
            amount +=org
            inc = current + (current*(gross/100))
            amount +=inc
            total = round(amount,2)
            retire -=1
        print("When you retire your pension will be: ", round(total,2))



age = int(input("Please enter your age:"))
years = int(input("How long have you been in service (years)?"))
current=int(input("What is your current salary?"))
start=int(input("What was your starting salary?"))
pension(age,years,current,start)
