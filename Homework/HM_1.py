print('Hello world')
# Питон не строго типизированный ЯП, то есть тип данных не надо указывать
# create variable type string (текст в кавычках)
name = 'Egor'
print(name)

# create variable type integer (целочисл)
age = 23
print(age)

# create variable type float (с точкой)
weight = 86.2
print(weight)

# create variable type bytes
bytes = b'type bytes'
print(bytes)

# create variable type of list
list = [1,2,3,4, 'Egor']
print(list)

# create variable type of tuple
tuple = (1, 2.13, 'Egor')
print(tuple)
print(tuple[0])

# create variable type of set
stringset = {"Egorr","Di","Doja"}
print(stringset)

# create variable type of frozenset
frozenset = frozenset([1,2,3,4,4])
print(frozenset)

# create variable type of dict
dict = dict(Egor='QA', salary= "120000" )
print(dict)

a = "Egor"
b = "QA"
print (a + " " + b)

a = "Egor"
b = 120000
print(a , str(b))