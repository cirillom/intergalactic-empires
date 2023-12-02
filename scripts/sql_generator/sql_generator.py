estoque = open('data-exploracao.csv', 'r')
estoque = estoque.readlines()
estoque = [i.strip().split(',') for i in estoque]

table_name = 'EXPLORACAO'

with open(table_name+'.sql', 'w') as f:
    header = estoque.pop(0)
    #attribute count
    n = len(header)

    header = ', '.join(header[:n])
    for i in estoque:
        # if value is string add quotes
        for j in range(0, n):
            if not i[j].isdigit():
                # make upper case
                i[j] = i[j].upper()
                i[j] = '\'' + i[j] + '\''
        values = ', '.join(i[:n])
        f.write(f'INSERT INTO {table_name}({header}) VALUES ({values});\n')
