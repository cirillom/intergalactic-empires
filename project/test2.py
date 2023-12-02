import oracledb
import getpass

#pw = getpass.getpass()
connection = oracledb.connect(user="a12547792",password="ChequeMate221",dsn="orclgrad1.icmc.usp.br:1521/pdb_elaine.icmc.usp.br")

print("Successfully connected to Oracle Database")

cursor = connection.cursor()

# Create a table
#cursor.execute("insert * from alunos")

try:
    cursor.execute("SELECT * FROM alunos")
    rows = cursor.fetchall()
    if not rows:
        print("No data found in 'alunos' table.")
    else:
        for nusp, cpf, nome, cidade, anoing in rows:
            print("Student Number: ", nusp)
            print("CPF: ", cpf)
            print("Name:", nome)
            print("City:", cidade)
            print("Year of Joining:", anoing) 
except oracledb.DatabaseError as e:
    print("There was an error:", e)

try:
    cursor.execute("""
        INSERT INTO ALUNOS (NUSP, CPF, NOME, CIDADE, ANOING)
        VALUES (:nusp, :cpf, :nome, :cidade, :anoing)
        """,
        nusp=12278750, cpf=82124843666, nome='Alexandre Lopes', cidade='Curitiba', anoing=2024
    )
    connection.commit()
    print("Data inserted successfully.")

except oracledb.DatabaseError as e:
    print("Error occurred:", e)

finally:
    cursor.close()