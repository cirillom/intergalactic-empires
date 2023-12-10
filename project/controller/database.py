import oracledb
import os
from dotenv import load_dotenv

# Import view
from view.viewBuilder import ViewBuilder

class DataBase:

    def __init__(self):
        self.view = ViewBuilder()

    def connectToDataBase(self):
        load_dotenv()

        # Get values from environment variables
        user = os.getenv('DB_USER')
        password = os.getenv('DB_PASSWORD')
        dsn = os.getenv('DB_DSN')

        # Connect to the database
        self.view.printSystem("Conectando...")
        connection = oracledb.connect(user=user, password=password, dsn=dsn)
        return connection

    def disconnectFromDataBase(self,connection):
        connection.close()

    def setUpDataBase(self,connection):
        self.deletePreviousSchemas(connection)
        self.createSchemas(connection)
        self.insertPlanets(connection)

    def deletePreviousSchemas(self,connection):
        cursor = connection.cursor()
        try:

            cursor.execute("select 'drop table '||table_name||' cascade constraints;' from user_tables")
            drop_table_commands = cursor.fetchall()

            for command in drop_table_commands:
                    formattedCommand = command[0].rstrip(';')
                    cursor.execute(formattedCommand)

        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro:{}".format(e))
            connection.rollback()
        finally:
            cursor.close()

    def createSchemas(self,connection):
        filePath = "project\esquemaAplicacao.sql"
        cursor = connection.cursor()
        try:
            with open(filePath, 'r') as file:
                sqlScript = file.read()

            sqlStatements = sqlScript.split(';')

            for statement in sqlStatements:
                if statement.strip():  # Check if statement is not empty
                    cursor.execute(statement)

            connection.commit()

        except Exception as e:
            self.view.printSystem(f"Erro: {e}")
            connection.rollback()

        finally:
            cursor.close()

    def insertPlanets(self,connection):
        cursor = connection.cursor()
        try:
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('TERRA', '-25, 10', 5.972E24, 25E9, 101.3, 287, 200, 9.8, 0.71, 0.1)")
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('ARRAKIS', '-10, -20', 4.5E24, 1E9, 85, 320, 50, 12.3, 0.01, 0.01)")
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('TRANTOR', '10, 10', 7E24, 100E9, 120, 290, 1000, 10.5, 0.05, 0.005)")
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('PANDORA', '-60, -40', 3E24, 500E6, 95, 290, 10, 7.2, 0.85, 0.2)")
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('TATOOINE', '40, 20', 4E24, 200E6, 90, 315, 10, 9.1, 0.05, 0.01)")
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('VULCAN', '0, 20', 5.5E24, 6E9, 105, 300, 50, 9.9, 0.1, 0.05)")
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('KRYPTON', '40, -25', 6E24, 20E9, 130, 250, 800, 22.3, 0.2, 0.15)")
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('VILTRUM', '-50, 50', 5E24, 10E9, 110, 275, 400, 19.7, 0.4, 0.25)")
            cursor.execute("INSERT INTO PLANETA (nome, coordenadas, massa, populacao_max, atmosfera, temperatura_kelvin, estruturas_max, gravidade, qtd_agua, fertilidade) VALUES ('SOLARIS', '-40, 50', 5E24, 10E9, 110, 275, 400, 19.7, 0.4, 0.25)")
            connection.commit()

        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro:{}".format(e))
            connection.rollback()
        finally:
            cursor.close()

         
        
