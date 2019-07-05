import sys, random

array = [[0 for i in range(2)]for i in range(15)]

for i in range(10):
    array[i][0]=str(random.randint(1,1000))

for i in range(10):
    array[i][1]= i + 1


print(array)

pointer = 0

def checknext(pointer):
    global array
    n = array[pointer][1]
    return n

if pointer == None:
    exit()

i = checknext(pointer)

while (i != 0):
    print(array[i])
    i = checknext(i)


def append(item):
    global array, pointer
    i = pointer
    while array[i][0] != 0:
        i = array[i][1]
    array[i][0] = item
    j = 0
    while array[j][0] != 0:
        j += 1
        if (j >= 15):
            return False
    array[i][1] = j



def deleteitem(item):
    global array
    global pointer
    i = pointer
    while (array[i][0] != 0):
        print ('Pointer is now at %d' % i)
        j = array[i][1]
        if (array[j][0] == item):
            array[i][1] = array[j][1]
            array[j] = [0,0]
            return True
        i = j
    return False

Menu = False


while Menu != True:
    option = input("What would you like to do?\n1 - Delete\n2 - Append\n3 - Print\n4 - Exit")
    if option =="1":
        item =input("What do you want to delete?")
        print(deleteitem(item))
    elif option == "2":
        item = input("What would you like to add?")
        append(item)
    elif option == "3":
        print(array)
    elif option == "4":
        exit()
print(queue)
