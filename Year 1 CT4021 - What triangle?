from math import *
side1 = int(input("What is the length of side 1?"))
side2 = int(input("What is the length of side 2?"))
side3 = int(input("What is the length of side 3?"))

def area(side1,side2,side3):
    perim = side1 + side2 + side3
    semiperim = perim/2
    area = sqrt(semiperim*(semiperim-side1)*(semiperim-side2)*(semiperim-side3))
    print (round(area ,2))

def type(side1,side2,side3):
    if (side1 ==side2) and(side2 == side3):
        print("Triangle is an equilateral")
    elif (side1==side2) or (side2 == side3):
        print("The triangle is an isosceles")
    else:
        print("The triangle is a scalene")

area(side1,side2,side3)
type(side1,side2,side3)
