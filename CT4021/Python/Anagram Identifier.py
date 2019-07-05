word1 = input("Enter a word")
word2 = input("Enter the 2nd word")

list1 = list(word1)
list2 = list(word2)

list1.sort()
list2.sort()


print(list1)
print(list2)

if list1 == list2:
    print("Words are an anagram of one another")
else:
    print("Words are not an anagram of one another")
