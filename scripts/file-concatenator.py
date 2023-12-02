#concat all sql data files into one file

import os
import sys

#access previous directory and go to database/data 
os.chdir('../database/data')
# get all files in data folder
files = os.listdir()
# remove all non .sql files
files = [i for i in files if i.endswith('.sql')]
# sort files by name
files.sort()

# create new file in previous directory
os.chdir('../')
with open('data.sql', 'w') as f:
    os.chdir('../database/data')
    # write all files into data.sql
    for i in files:
        print(f'Concatenating {i}')
        file_name = i.split('.')[0]
        header = f'-- {file_name}\n'
        f.write(header)
        with open(f'{i}', 'r') as g:
            f.write(g.read())
        f.write('\n\n')
