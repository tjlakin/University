import time
from random import randint

print("Welcome to Rock, Paper, Scissors, Lizard or Spock")
time.sleep(2)
print("You will be playing against the computer")
time.sleep(2)
print("Lets Begin")
time.sleep(2)
print("")

choice = ["Rock","Paper","Scissors","Lizard","Spock"]

computer = choice[randint(0,4)] # Computer picks from the list above randomly

user = False

# The game
while user == False:
    user = input("Rock, Paper, Scissors, Lizard or Spock")
    # if player and computer choice the same play
    if user == computer:
        print("Computing Deciding...")
        time.sleep(3)
        print("Computer Decided")
        time.sleep(3)
        print("It's A Tie")
        print("Computer Chose: ",computer,'\n'"You Chose: ",user)

    #options for if user picks rock
    elif user =="Rock":
        print("Computing Deciding...")
        time.sleep(3)
        print("Computer Decided")
        time.sleep(3)
        if computer =="Scissors":
            print("You Win,", user,"crushes",computer)
        elif computer =="Lizard":
            print("You Win,", user,"crushes",computer)
        elif computer =="Paper":
            print("You Lose,", computer,"covers",user)
        else:
            print("You Lose,", computer,"vaporises",user)

    #options for if user picks paper
    elif user =="Paper":
        print("Computing Deciding...")
        time.sleep(3)
        print("Computer Decided")
        time.sleep(3)
        if computer =="Scissors":
            print("You Lose,", computer,"cuts",user)
        elif computer =="Lizard":
            print("You Lose,", computer,"eats",user)
        elif computer =="Rock":
            print("You Win,", user,"covers",computer)
        else:
            print("You Win,", user,"disproves",computer)

    #options for if user picks scissors
    elif user =="Scissors":
        print("Computing Deciding...")
        time.sleep(3)
        print("Computer Decided")
        time.sleep(3)
        if computer =="Rock":
            print("You Lose,", computer,"crushes",user)
        elif computer =="Lizard":
            print("You Win,", user,"decapitates",computer)
        elif computer =="Paper":
            print("You Win,", user,"cuts",computer)
        else:
            print("You Lose,", computer,"smashes",user)

    #options for if user picks lizard
    elif user =="Lizard":
        print("Computing Deciding...")
        time.sleep(3)
        print("Computer Decided")
        time.sleep(3)
        if computer =="Scissors":
            print("You Lose,", computer,"decapitates",user)
        elif computer =="Rock":
            print("You Lose,", computer,"crushes",user)
        elif computer =="Paper":
            print("You Win,", user,"eats",computer)
        else:
            print("You Win,", user,"poisons",computer)

    #options for if user picks spock
    elif user =="Spock":
        print("Computing Deciding...")
        time.sleep(3)
        print("Computer Decided")
        time.sleep(3)
        if computer =="Scissors":
            print("You Win,", user,"smashes",computer)
        elif computer =="Lizard":
            print("You Lose,", computer,"poisons",user)
        elif computer =="Paper":
            print("You Lose,", computer,"disproves",user)
        else:
            print("You Win,", user,"vaporises",computer)
    else:
        print("Invalid Play, check your spelling")
        player = False     # Goes back to start of the loop if invalid play is chosen
        computer = choice[randint(0,4)]
