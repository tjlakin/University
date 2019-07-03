decision = input("Star or Hash triangle")
height = int(input("Enter a height:"))

def triangle(decision,height):
    counter = height
    if decision == 'hash':
     print("A triangle of hashes")
     for rows in range(1,height * 2,2):
         counter -=1
         for i in range(counter):
             print(" ", end='')
         for columns in range (rows):
             print('#', end='')
         print()
    elif decision == 'star':
     print("A triangle of star")
     for rows in range(1,height * 2,2):
         counter -=1
         for i in range(counter):
             print(" ", end='')
         for columns in range (rows):
             print('*', end='')
         print()

triangle(decision,height)
