import time
from math import *

#################################################
#Functions

#Function that tells the user about the game
def About():
       about=open("About.txt","r")
       for line in about:
        print(line)
        time.sleep(0.5)
       about.close()

#Function that writes to a seperate file to create a scoreboard
def scoreboard(name,money,room):
    score = str(money)
    sb = open("scoretable.txt","a")
    sb.write('\n')
    sb.write(name)
    sb.write(",")
    sb.write(score)
    sb.write(",")
    sb.write(room)
    sb.close

#Function that reads from a notepad the note in the first room
def room1note():
    print("The note says:")
    print("Hello", name, "you made the right choice at that first decision.")
    time.sleep(0.5)
    print("")
    note1 = open("room1note.txt","r")
    for line in note1:
        print(line)
        time.sleep(0.5)
    note1.close()

#Function that reads from a notepad the note in the second room
def note2():
    print("")
    print("The note says:")
    print("")
    time.sleep(0.5)
    note2 = open("room2note.txt","r")
    for line in note2:
        print(line)
        time.sleep(0.5)
    note2.close()

#Function used to calculate the quadratic equation.
def quad(a,b,c):
    square = sqrt(b**2 -(4 * a * c))
    division = 2 * a
    neg = b - (b*2)
    answer1 = (neg + square)/division
    answer2 = (neg - square)/division
    print("The keypad says, Calculating...")
    time.sleep(1)
    print ("The keypad then shows"'\n'"Answer 1: ", answer1, '\n' "Answer 2: ", answer2)
    time.sleep(1)
    print("")

#Ending of the game.
def endgame(name):
    print("Congratulations", name, "you managed to escape the house")
    time.sleep(0.5)
    print("and most importantly you escaped the Grue")
    time.sleep(0.5)
    print("Your score has been added to the leaderboard")
    time.sleep(0.5)
    scoretable=open("scoretable.txt","r")
    for line in scoretable:
        print(line)
        time.sleep(0.5)
    scoretable.close()
    time.sleep(1)
    print("Goodbye")
#########################################################

#########################################################
# A list that will keep track of an items the user picks up
inventory = []

#########################################################
#All variables for the game are stored in this section
money = 0 # A variable to keep track of the user's money(this is their score)
menu = True
start_game = False
room2light = False
room3men = False
room ="Outside"
wardrobe = False
flashlight = False
elsewhere = False
read2 = False
attempt = 3
compass = False
room4men = False
melt = False
secret = False
fall = False
tries = 1
keycard = False
finalkey = False
finalcode = False
#########################################################

#########################################################
# Main menu for the user.
while menu == True:
    user_choice = int(input("1) Play the Game (1)" '\n' "2) About the Game (2)" '\n' "3) Scoreboard (3)"'\n'"4) Exit (4)"))
    menu = False

    if user_choice == 1:
        start_game = True

    elif user_choice == 2:
        About()
        menu = True

    elif user_choice == 3:
        scoretable=open("scoretable.txt","r")
        for line in scoretable:
            print(line)
            time.sleep(0.5)
        scoretable.close()
        menu=True

    elif user_choice == 4:
        print("Goodbye")
        time.sleep(1.5)

    else:
        print("Invalid Option")
        menu = True
#########################################################

while start_game == True:
    start_game = False
    # A welcome to the game
    print ("Welcome to the Adventure of Life")
    time.sleep(1)
    print("You have to navigate through 6 rooms")
    time.sleep(1)
    print("Each room has items in, some items may help in other rooms")
    time.sleep(1)
    print("However, some will not help at all")
    time.sleep(0.5)
    name=input("What is your name?")
    print("Hello",name,"welcome to the game")
    print("")
    print("Lets Begin")
    time.sleep(1)

    #Start of the game
    time.sleep(0.5)
    print("You are wondering through the woods and you come across a mansion")
    time.sleep(0.5)
    print("You are in the middle of the storm and you need to find shelter")
    time.sleep(0.5)
    print("You see lights on in the mansion, You have two choices.")
    time.sleep(0.5)

    #Enter or leave the mansion
    stay_or_go = input("Do you go knock on the door (Enter door) or carry on through the woods (Enter woods)?")
    if stay_or_go == "door":
        print("")
        print("You walk up to the door and knock")
        time.sleep(0.5)
        print("No answer you knock again")
        time.sleep(0.5)
        print("Still no answer")
        time.sleep(0.5)
        print("You notice two keys on the floor")
        time.sleep(0.5)
        print("You try both and one opens the door, you put the other in your pocket")
        time.sleep(0.5)
        inventory.append("key")
        finalkey = True
        print("You enter the door and it shuts behind you")
        time.sleep(0.5)
        print("You notice £50 next to a plant pot and you pick it up")
        money += 50
        time.sleep(0.5)
        print("You notice two doorways, you have to decide which way to go")


        direction = input("Left or Right?")

        # First room decision for the user when they enter the mansion.
        if direction =="right":
            print("")
            room = "Right of Main Door"
            print("You enter the doorway to your right")
            time.sleep(0.5)
            print("You enter and realise that it was the wrong option")
            time.sleep(0.5)
            print("The door closes behind you and locks itself")
            time.sleep(0.5)
            print("You hear a noise in the darkness")
            time.sleep(0.5)
            print("A monster name the Grue attacks and devours you")
            time.sleep(0.5)
            print("GAME OVER")
            print("Your score was", money)
            scoreboard(name,money,room)
            time.sleep(2)

        elif direction == "Left" or "left":
            print("")
            print("You enter the doorway to your left")
            time.sleep(0.5)
            print("As you enter the door closes and the room illuminates")
            time.sleep(0.5)
            print("You see a table with a note and a flashlight on it")
            time.sleep(0.5)
            print("You take the flashlight")
            inventory.append("flashlight")

            #Exploring the first room.
            room1men=True
            while room1men == True:
                room1 = int(input("Do you:"'\n' "1: Read the Note (Enter 1)" '\n' "2: Explore the Room (Enter 2)"'\n'"3: Leave the Room (Enter 3)"))
                room1men = False


                if room1 == 1:
                    print("")
                    room1note()
                    room1men = True

                elif room1 == 2:
                    print("")
                    time.sleep(0.5)
                    print("You start to explore the room and notice some cupboards and a wardrobe.")
                    time.sleep(0.5)

                    room1ex = True
                    while room1ex == True:
                        room1ex = False
                        explore1 = int(input("Do you: "'\n'"1: Open the cupboards (Enter 1)"'\n'"2: Open the wardrobe (Enter 2)"'\n'"3: Contine to explore the room (Enter 3)"'\n'"4: Go back to the table (Enter 4)"))
                        if explore1 == 1:
                            print("")
                            print("You open the draws of the cupboards and find nothing.")
                            time.sleep(0.5)
                            print("You then open the doors of the cupboards and notice something etched into the wood of the door.")
                            time.sleep(0.5)
                            print("You go and grab the note that was on the table and write down what you see with the pen in your pocket.")
                            time.sleep(0.5)
                            print("You write down #1637*"'\n'"You think to yourself it must be some type of code")
                            time.sleep(0.5)
                            inventory.append("code = #1637*")
                            finalcode = True
                            time.sleep(0.5)
                            print("You close the draws and doors and go back to exploring the room.")
                            time.sleep(0.5)
                            room1ex = True

                        elif explore1 == 2:
                            print("")
                            print("You approach the wardrobe and open the left door.")
                            time.sleep(0.5)
                            print("You see a locked box which needs a 3 digit code.")
                            time.sleep(0.5)
                            print("You rummage around the wardrobe and notice some money flapping around.")
                            time.sleep(0.5)
                            print("You pick up £35")
                            money += 35
                            time.sleep(0.5)
                            print("You now have £",money)
                            time.sleep(0.5)
                            print("You then open the right door.")
                            time.sleep(0.5)
                            print("A series of numbers are layed out in the wardrobe."'\n'"1507"'\n'"8590"'\n'"2000"'\n'"and 1303")
                            code = True
                            time.sleep(0.5)
                            ward = int(input("Do you:" '\n'"Start entering codes into the box (Enter 1)"'\n'"Go back to exploring the room (Enter 2)"))
                            if ward == 1:
                                print("You go back to the lock box")
                                time.sleep(0.5)

                                boxcode = True
                                while boxcode == True:
                                    boxcode = False

                                    code=int(input("What code do you want to enter?"))

                                    if code != 8590:
                                        print("")
                                        print("It was the incorrect code you enter another.")
                                        boxcode = True

                                    elif code == 8590:
                                        print("")
                                        print("The lock opens and the box is unlocked")
                                        time.sleep(0.5)
                                        print("You reach in and take out a fuse out. You put it in your inventory")
                                        inventory.append("fuse")
                                        print(inventory)
                                        print("You go back to exploring the room")
                                        wardrobe = True
                                        room1ex = True


                        elif explore1 == 3:
                            print("")
                            time.sleep(0.5)
                            print("You continue walking in the room and see a box with wires coming out of it on the wall")
                            time.sleep(0.5)
                            print("You walk over to it and open it.")
                            time.sleep(0.5)
                            print("You realise its a fuse box and its missing a fuse.")
                            if wardrobe == True:
                                print("In your inventory is" ,inventory)
                                fusebox = True
                                while fusebox == True:
                                    fuse = input("What do you want to use?")
                                    fusebox = False
                                    if fuse =="fuse":
                                        print("")
                                        print("You take the fuse out of your inventory and put it in the slot")
                                        time.sleep(0.5)
                                        print("You hear a clunk then a humming sound")
                                        time.sleep(0.5)
                                        print("A sign illuminates above the box saying (---> of main door is on)")
                                        time.sleep(0.5)
                                        print("You guess that the lights in the room to the right of the main door are now on.")
                                        room2light = True
                                        inventory.remove("fuse")
                                        print("You head back to the table.")
                                        print(inventory)
                                        room1men = True

                                    elif fuse !="fuse":
                                        print("")
                                        print("That would not be the best option to use")
                                        fusebox = True
                            else:
                                print("")
                                print("You realise you dont have a fuse on you so you go back to exploring the room")
                                room1ex = True

                        elif explore1 == 4:
                            room1men = True


                elif room1 == 3:
                    print("")
                    time.sleep(0.5)
                    print("You leave the room and now face another decision.")
                    time.sleep(0.5)
                    room2men = True

                    #Second room decision for the user.
                    while room2men==True:
                        room2 = int(input("Do you: "'\n'"1) Head upstairs (Enter 1)"'\n'"2) Enter the room to the right of the main door (Enter 2)"))
                        room2men=False
                        if room2 == 1:
                            print("")
                            print("You are risking being attacked by the Grue as there is no light upstairs")
                            time.sleep(0.5)
                            stay = int(input("Do you: " '\n'"1) Risk it and head upstairs (Enter1)"'\n'"2) Stay down stairs (Enter 2)"))
                            if stay == 1:
                                print("")
                                print("I warned you about the risks")
                                time.sleep(0.5)
                                print("YOU HAVE BEEN ATTACKED BY THE GRUE")
                                time.sleep(0.5)
                                print("GAME OVER")
                                time.sleep(0.5)
                                print("Your score was: ", money)
                                room = "Upstairs Landing"
                                scoreboard(name,money,room)
                                time.sleep(2)

                            elif stay == 2:
                                print("")
                                print("Wise choice")
                                room2men = True

                            else:
                                print("")
                                print("INVALID CHOICE")
                                room2men = True

                        elif room2 == 2:
                            print("")
                            if room2light == True:
                                print("")
                                print("You notice that the lights in this room are now on.")
                                time.sleep(0.5)
                                print("You see another table with another note")
                                time.sleep(0.5)
                                print("You also see a closet door slightly opened and hear a purring sound coming from it.")
                                time.sleep(0.5)
                                room3men = True
                                while room3men == True:
                                    room3 = int(input("Do you: "'\n'"1: Read the note on the table/look at pictures (Enter 1)"'\n'"2: Go to the closet and have a look (Enter 2)"'\n'"3: Look elsewhere in the room(Enter 3)"'\n'"4: Leave the room (Enter 4)"))
                                    room3men = False

                                    if room3 == 1:
                                        if read2 == False:
                                            note2()
                                            read2 = True
                                        elif elsewhere == True and read2 == True:
                                            print("")
                                            print("You now use the magnifying glass on the pictures on the table")
                                            time.sleep(0.5)
                                            print("As you look at each picture you notice a compass position.")
                                            time.sleep(0.5)
                                            print("The first picture shows N"'\n'"The second picture shows S"'\n'"The third shows W"'\n'"and the fourth shows E")
                                            time.sleep(0.5)
                                            print("You wonder what that could mean (HINT Go into Main Corridor)")
                                        room3men = True

                                    elif room3 == 2:
                                        print("")
                                        print("As you get closer the purring sound gets louder.")
                                        flashon = input("Before you open the door, do you want to turn your flashlight on?")
                                        if flashon == "yes":
                                            flashlight = True
                                            print("")
                                            print("You open the door and shine your flashlight into the closet")
                                            time.sleep(0.5)
                                            print("You feel something run between your legs when the light hits the back of the closet")
                                            time.sleep(0.5)
                                            print("You shine your flashlight around the closet and see some pictures.")
                                            time.sleep(0.5)
                                            print("You recognise the person in the pictures, they are of yourself.")
                                            time.sleep(0.5)
                                            print("You take the pictures down and place them on the table with the note.")
                                            time.sleep (0.5)
                                            print("You look at each picture individually, you can't see anything to the naked eye.")
                                            time.sleep (0.5)
                                            print("You head back into the closet and see three numbers.")
                                            time.sleep(0.5)
                                            print("a = 5"'\n'"b = 6"'\n'"c = 1")
                                            room3men = True

                                        elif flashon == "no":
                                            flashlight = False
                                            print("")
                                            room = "Room 2 Closet"
                                            print("When you open the door, the purring gets closer to you.")
                                            time.sleep(0.5)
                                            print("You realise that the note did say the Grue ran away, but you then realise it ran into the closet.")
                                            time.sleep(0.5)
                                            print("You try and reach your flashlight but you are too late")
                                            time.sleep(0.5)
                                            print("You are killed by the Grue")
                                            time.sleep(0.5)
                                            print("GAME OVER")
                                            time.sleep(0.5)
                                            print("Your score was, ",money)
                                            scoreboard(name,money,room)

                                    elif room3 == 3:
                                        print("")
                                        elsewhere = True
                                        print("You look around the room, you see some window seating.")
                                        time.sleep(0.5)
                                        print("You notice that the seating can be opened, however their seem to be a maths problem that is stopping you.")
                                        time.sleep(0.5)
                                        print("Etched into the wood is the quadratic equation, next to it is a keypad.")
                                        time.sleep(0.5)
                                        print("On the keypad, it shows"'\n'"a = "'\n'"b = "'\n'"c = ")
                                        time.sleep(0.5)
                                        keypad = True
                                        while keypad ==True:
                                            keypad = False
                                            a = int(input("What does a =?"))
                                            b = int(input("What does b =?"))
                                            c = int(input("What does c =?"))

                                            if a == 5 and b == 6 and c == 1:
                                                quad(a,b,c)
                                                print("")
                                                print("The keypad then shows a unlocked padlock and the seats slightly open.")
                                                time.sleep(0.5)
                                                print("You rummage round and find a magnifying glass.")
                                                time.sleep(0.5)
                                                print("You place it in your inventory")
                                                inventory.append("magnifying glass")
                                                elsewhere = True
                                                room3men = True

                                            elif a !=5 or b !=6 or c!=1:
                                                    print("")
                                                    attempt -=1
                                                    print("Incorrect numbers, You have", attempt, "more tries")
                                                    keypad = True

                                                    if attempt == 0:
                                                        print("")
                                                        room = "Room 2 Keypad"
                                                        print("You are wrong again, this time the lights go out.")
                                                        time.sleep(0.5)
                                                        print("The purring returns and the Grue attacks.")
                                                        print("GAME OVER")
                                                        time.sleep(0.5)
                                                        print("Your score was: ", money)
                                                        scoreboard(name,money,room)
                                                        time.sleep(2)

                                    elif room3 == 4:
                                        print("")
                                        print("You leave the room and look around.")
                                        time.sleep(0.5)
                                        print("You look closer at the banisters and see that one is different to the other.")
                                        time.sleep(0.5)
                                        print("One of the banisters seems to have a dial that looks like a compass at then end.")
                                        time.sleep(0.5)
                                        print("You can clearly see North, East, South, West on the dial")
                                        compass = True
                                        while compass == True:
                                            compass = False
                                            dial1 = input("How do you turn the dial first?")
                                            dial2 = input("How do you turn the dial second?")
                                            dial3 = input("How do you turn the dial third?")
                                            dial4 = input("How do you turn the dial fourth?")

                                            if dial1 == "N" or "north" and dial2 == "S" or "south" and dial3 == "W" or "west" and dial4 == "E" or "east":
                                                print("")
                                                print("The dial lights up.")
                                                time.sleep(0.5)
                                                print("You look up the stairs and the lights fade on.")
                                                time.sleep(0.5)
                                                print("You head up as there is nowhere else to go.")
                                                time.sleep(0.5)
                                                print("You enter the door at the top of the stairs.")
                                                time.sleep(0.5)
                                                print("You enter and see the lights on but no note. You also hear the door lock behind you.")
                                                time.sleep(0.5)
                                                print("You only see a table with a block of ice on it.")
                                                time.sleep(0.5)
                                                print("You also see a cupboard in the room.")
                                                room4men = True
                                                while room4men == True:
                                                    room4men = False
                                                    room4 = int(input(("Do you:"'\n'"1)Look at the Ice (Enter 1)"'\n'"2)Go to the cupboard (Enter 2)"'\n'"3)Explore the back wall (Enter 3)")))

                                                    if room4 == 1:
                                                        print("")
                                                        print("You move to the ice")
                                                        time.sleep(0.5)
                                                        print("You make out a box in the ice.")
                                                        time.sleep(0.5)
                                                        if melt == True:
                                                            print("")
                                                            print("You take out of your inventory a candle and a blowtorch")
                                                            time.sleep(0.5)
                                                            print("The ice starts to melt")
                                                            time.sleep(0.5)
                                                            print("1 hour later...")
                                                            time.sleep(0.5)
                                                            print("The ice melts")
                                                            time.sleep(0.5)
                                                            print("You reach in and take the box")
                                                            time.sleep(0.5)
                                                            print("You open the box and see a keycard, you take it and place it in your inventory.")
                                                            inventory.append("keycard")
                                                            keycard = True
                                                            secret = True
                                                            room4men = True

                                                        else:
                                                            print("")
                                                            print("You don't know how to get the box out of the ice")
                                                            time.sleep(0.5)
                                                            print("You go back to explore the room.")
                                                            room4men = True

                                                    elif room4 == 2:
                                                        print("")
                                                        print("You head over to the cupboard")
                                                        time.sleep(0.5)
                                                        print("You open the cupboard and see a candle and a blowtorch")
                                                        time.sleep(0.5)
                                                        print("You add them to your inventory")
                                                        inventory.append("candle")
                                                        inventory.append("blowtorch")
                                                        melt = True
                                                        room4men = True

                                                    elif room4 == 3:
                                                        if secret == True:
                                                            print("")
                                                            print("When you opened the box you noticed that a passageway opened at the back.")
                                                            time.sleep(0.5)
                                                            print("You head through the passageway to another room.")
                                                            time.sleep(0.5)
                                                            print("As you walk through the corridor to the room, you see a sign illuminated.")
                                                            time.sleep(0.5)
                                                            print("As you get closer you find that they sign says go back to the ice.")
                                                            time.sleep(0.5)
                                                            print("You head back to the ice and stand where it once was.")
                                                            time.sleep(0.5)
                                                            print("As you stand there the floor creaks")
                                                            time.sleep(0.5)
                                                            print("It then breaks from underyou and you fall into a room below.")
                                                            fall = True

                                                            if fall == True:
                                                                print("")
                                                                print("You regain your composure and stand up.")
                                                                time.sleep(0.5)
                                                                print("You see a sign above a door saying EXIT")
                                                                time.sleep(0.5)
                                                                print("However, it is blocked, by a gate.")
                                                                time.sleep(0.5)
                                                                print("You see that a key is needed")
                                                                time.sleep(0.5)
                                                                print("You open your inventory and see what you have.")
                                                                print(inventory)
                                                                if finalkey ==True:
                                                                    print("")
                                                                    print("You see that you have a key from the main door that you picked up.")
                                                                    time.sleep(0.5)
                                                                    print("You take the key and it fits in the lock.")
                                                                    inventory.remove("key")
                                                                    time.sleep(0.5)
                                                                    print("You turn it and the gate opens")
                                                                    time.sleep(0.5)
                                                                    print("You next see a slot for a keycard.")
                                                                    time.sleep(0.5)
                                                                    print("In your inventory you have,",inventory)

                                                                    if keycard ==True:
                                                                        print("")
                                                                        print("You take the keycard out of your inventory")
                                                                        inventory.remove("keycard")
                                                                        print("You put the keycard into the slot and a keypad emerges from the wall.")

                                                                        if finalcode == True:
                                                                            print("")
                                                                            print("You look at the note in your inventory")
                                                                            print(inventory)
                                                                            time.sleep(0.5)
                                                                            doorcode = True
                                                                            while doorcode == True:
                                                                                doorcode = False
                                                                                fcode = input("What is the code?")
                                                                                if fcode == "#1637*":
                                                                                    room = "Exit"
                                                                                    print("")
                                                                                    print("The exit door clunks open.")
                                                                                    time.sleep(0.5)
                                                                                    print("You walk out into the garden and see an envelope")
                                                                                    time.sleep(0.5)
                                                                                    print("You open the envelope and see £135")
                                                                                    money += 135
                                                                                    print("Your score is £",money)
                                                                                    time.sleep(0.5)
                                                                                    print("You walk away from the house, never to return.")
                                                                                    scoreboard(name,money,room)
                                                                                    endgame(name)

                                                                                elif fcode != "#1637*":
                                                                                    print("Incorrect, you have one last try")
                                                                                    tries -=1
                                                                                    doorcode = True
                                                                                    if tries == 0:
                                                                                        print("")
                                                                                        print("Inccorrect code, the lights go out")
                                                                                        time.sleep(0.5)
                                                                                        room = "Exit Door - Wrong Code"
                                                                                        print("The purring of the Grue grows louder")
                                                                                        time.sleep(0.5)
                                                                                        print("The Grue atacks and you die")
                                                                                        time.sleep(0.5)
                                                                                        print("GAME OVER")
                                                                                        time.sleep(0.5)
                                                                                        print("Your score was: ", money)
                                                                                        scoreboard(name,money,room)
                                                                                        time.sleep(2)
                                                                        else:
                                                                            print("")
                                                                            print("You don't have the code, the lights go out")
                                                                            time.sleep(0.5)
                                                                            room = "Exit Door - No Code"
                                                                            print("The purring of the Grue grows louder")
                                                                            time.sleep(0.5)
                                                                            print("The Grue atacks and you die")
                                                                            time.sleep(0.5)
                                                                            print("GAME OVER")
                                                                            time.sleep(0.5)
                                                                            print("Your score was: ", money)
                                                                            scoreboard(name,money,room)
                                                                            time.sleep(2)
                                                                    else:
                                                                        print("")
                                                                        print("You don't have the keycard, the lights go out")
                                                                        time.sleep(0.5)
                                                                        room = "Exit Door - No Keycard"
                                                                        print("The purring of the Grue grows louder")
                                                                        time.sleep(0.5)
                                                                        print("The Grue atacks and you die")
                                                                        time.sleep(0.5)
                                                                        print("GAME OVER")
                                                                        time.sleep(0.5)
                                                                        print("Your score was: ", money)
                                                                        scoreboard(name,money,room)
                                                                        time.sleep(2)
                                                                else:
                                                                    print("")
                                                                    print("You don't have the key, the lights go out")
                                                                    time.sleep(0.5)
                                                                    room = "Exit Door - No Key"
                                                                    print("The purring of the Grue grows louder")
                                                                    time.sleep(0.5)
                                                                    print("The Grue atacks and you die")
                                                                    time.sleep(0.5)
                                                                    print("GAME OVER")
                                                                    time.sleep(0.5)
                                                                    print("Your score was: ", money)
                                                                    scoreboard(name,money,room)
                                                                    time.sleep(2)

                                                        elif secret != True:
                                                            print("")
                                                            print("You head to the wall and hear wind coming through the wall.")
                                                            time.sleep(0.5)
                                                            print("You try and find a way to open it, you can't and head back into the room.")
                                                            room4men = True


                                            else:
                                                print("Nothing happened, you try again.")
                                                compass = True



                            elif room2light == False:
                                print("You enter the doorway to the right of the main door.")
                                time.sleep(0.5)
                                print("You enter and realise that you didn't complete the puzzle in the first room to turn on the lights.")
                                time.sleep(0.5)
                                print("You hear a noise in the darkness")
                                time.sleep(0.5)
                                print("The Grue attacks and devours you")
                                time.sleep(0.5)
                                print("GAME OVER")
                                print("Your score was", money)
                                time.sleep(0.5)



    elif stay_or_go == "woods":
        print("")
        room = "woods"
        print("You carry on through the woods")
        time.sleep(0.5)
        print("The storm gets worse and with no shelter you die")
        time.sleep(0.5)
        print("GAME OVER")
        time.sleep(0.5)
        print("Your score was: ", money)
        scoreboard(name,money,room)
        time.sleep(2)
