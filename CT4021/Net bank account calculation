import time

#Question 1
# This function calculates the amount of money deposited
# and if its over £4000, asks the user for a refrence and payee
def DepositCash(amount):
    if amount > 1500 and amount <=4000:
        taxed = amount -(amount * 0.5)
        print("Amount deposited: ", taxed)
        print("New Balence:", balence + taxed)
    elif amount > 4000:
        taxed2 = amount -(amount * 0.5)
        ref = int(input("Please enter a refrence number"))
        payee = input("Please enter the payee info")
        print("Amount deposited: ", taxed2, '\n' "Refrence: ",ref, '\n' "Payee: ", payee)
        print("New Balence:", balence + taxed2)
    else:
        print("Cash Deposited")
        print("New Balence:", balence + amount)

#Function to withdraw money from the users account.
def withdraw(withamoun,balence):
    overdraft = 100
    curover = 0
    if withamoun>balence:
        print ("You are going into your overdraft")
        overdraft -= withamoun
        overdraftam = overdraft + (overdraft * 0.05)
        print ("Overdraft now: ", overdraftam)
    else:
        print("Withdrawing...")
        time.sleep(3)
        print ("£",withamoun,"withdrawn")
        print("Current Balence: £",(balence - withamoun))


balence = int(input("Enter current balence"))
choice = int(input("Deposit Cash (1), Deposit Cheque (2), Withdraw (3)"))
if choice == 1:
    amount =int(input("How much to deposit?"))
    DepositCash(amount)
elif choice == 2:
    print ("Cheque Deposited")
elif choice == 3:
    withamoun=int(input("How much to withdraw?"))
    withdraw(withamoun, balence)
else:
    print("Invalid Choice")
