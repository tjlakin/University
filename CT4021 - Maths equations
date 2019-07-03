from math import *
import time

#This function works out a quadratic equation
def quad(a,b,c):
    square = sqrt(b**2 -(4 * a * c))
    division = 2 * a
    neg = b - (b*2)
    answer1 = (neg + square)/division
    answer2 = (neg - square)/division
    print("Calculating...")
    time.sleep(3)
    print ("Answer 1: ", answer1, '\n' "Answer 2: ", answer2)
    time.sleep(2.5)
    print("")

#This function works out the area of a circle
def areacir(radius):
    area = 3.14*(radius**2)
    print("Calculating...")
    time.sleep(1.5)
    print("Area of Circle: ", area)
    time.sleep(2.5)
    print("")

def circumfrance(diameter):
    circumfrance = 3.14 * diameter
    print("Calculating...")
    time.sleep(1.5)
    print(circumfrance)
    time.sleep(2.5)
    print("")

def triarea(base,height):
    part1 = base * height
    solution = part1 / 2
    print("Calculating...")
    time.sleep(1.5)
    print("Area of the triangle: ", solution)
    time.sleep(2.5)
    print("")

def volcyl(radius,height):
    part1 = 3.14*(radius**2)
    volume = part1 * height
    print("Calculating...")
    time.sleep(1.5)
    print("Volume of Cylindar: ", volume)
    time.sleep(2.5)
    print("")

menu = True
while menu == True:
    print ("Quadratic (Enter 1)"'\n' "Area of Circle (Enter 2)" '\n' "Circumfrence of Circle (Enter 3)" '\n'"Area of Triangle (Enter 4)" '\n'"Volume of cylinder (Enter 5)"'\n'"Exit (Enter 0)")
    print("")
    equation = int(input("Enter the Number of the choice you want"))

    if equation == 1:
        a = int(input("Enter the Value of a"))
        b = int(input("Enter the Value of b"))
        c = int(input("Enter the Value of c"))
        quad(a,b,c)

    elif equation == 2:
        radius = int(input("Enter the radius of the circle"))
        areacir(radius)

    elif equation == 3:
        diameter = int(input("Please enter the diameter"))
        circumfrance(diameter)

    elif equation == 4:
        base = int(input("Enter the base of the triangle"))
        height = int(input("Enter the height of the triangle"))
        triarea(base,height)

    elif equation == 5:
        rad = int(input("Enter the radius"))
        hei = int(input("Enter the height"))
        volcyl(rad,hei)

    elif equation == 0:
        print("Goodbye")
        menu = False

    else:
        print("Invalid Choice")
        menu = False
