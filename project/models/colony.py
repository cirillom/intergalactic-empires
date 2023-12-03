import oracledb

from view.viewBuilder import ViewBuilder

class Colony:

    def __init__(self,empire,planet,turn):
        self.empire = empire
        self.planet = planet
        self.turn = turn

class Colonies:

    colonies = []

    def __init__(self):
        self.view = ViewBuilder()

    def insertColony(self,empire,planet,turn):
        self.view.printSystem("Conectando...")

        self.connection = oracledb.connect(user="a12547792",password="ChequeMate221",dsn="orclgrad1.icmc.usp.br:1521/pdb_elaine.icmc.usp.br")
        self.cursor = self.connection.cursor()

        error = False
        try:
            self.cursor.execute("""
            INSERT INTO COLONIA (IMPERIO, PLANETA, TURNO_INICIAL, TURNO_FINAL)
            VALUES (:empireSQL, :planetSQL, :turnSQL, :turnEndSQL)
            """,
            empireSQL = empire,planetSQL = planet, turnSQL = turn, turnEndSQL = 3)

            self.connection.commit()

        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro ocorreu:{}".format(e))
            error = True

        finally:
            self.cursor.close()
            self.colonies.append(Colony(empire,planet,turn))
            return error