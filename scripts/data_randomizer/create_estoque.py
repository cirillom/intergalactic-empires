#open csv with fields planeta; recurso; turno; quantidade
import random


estoque = open('estoque.csv', 'r')
estoque = estoque.readlines()
estoque = [i.strip().split(',') for i in estoque]

#remove header
estoque.pop(0)

#join planeta and recurso to create a unique key
for i in estoque:
    i[3] = int(i[3])
    i[0] = i[0] + ', ' + i[1]
    i.pop(1)

new_estoque = []

#for each key, create a new tuple with the key and the quantity
for i in estoque:
    a = i[0].strip().split(',')
    #remove first char
    a[1] = a[1][1:]
    new_estoque.append((a[0], a[1], int(i[1]), i[2]))
    previous_quantity = i[2]
    for j in range(1, 8):
        previous_quantity = int(int(previous_quantity) * random.uniform(0.7, 1.3))
        b = i[0].strip().split(',')
        b[1] = b[1][1:]
        new_estoque.append((b[0], b[1], j, previous_quantity))

#order tuple by key
estoque = sorted(estoque, key=lambda x: x[0])

#create a csv with the new estoque
with open('new_estoque.csv', 'w') as f:
    f.write('planeta,recurso,turno,quantidade\n')
    for i in new_estoque:
        f.write(i[0] + ',' + i[1] + ',' + str(i[2]) + ',' + str(i[3]) + '\n')

