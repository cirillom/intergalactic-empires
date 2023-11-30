estoque = open('new_estoque.csv', 'r')
estoque = estoque.readlines()
estoque = [i.strip().split(',') for i in estoque]

table_name = 'ESTOQUE'

with open(table_name+'.sql', 'w') as f:
    header = estoque.pop(0)
    header = header[0] + ', ' + header[1] + ', ' + header[2] + ', ' + header[3]
    for i in estoque:
        #if value is string add quotes
        for j in range(0, 4):
            if i[j].isdigit() == False:
                #make upper case
                i[j] = i[j].upper()
                i[j] = '\'' + i[j] + '\''
        i = i[0] + ', ' + i[1] + ', ' + i[2] + ', ' + i[3]
        f.write('INSERT INTO '+table_name+'(' + str(header) + ') VALUES (' + str(i) + ');\n')
