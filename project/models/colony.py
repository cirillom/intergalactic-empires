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

    def insertColony(self,empire,planet,turn,connection):
        cursor = connection.cursor()

        error = False
        try:
            cursor.execute("""
            INSERT INTO COLONIA (IMPERIO, PLANETA, TURNO_INICIAL, TURNO_FINAL)
            VALUES (:empireSQL, :planetSQL, :turnSQL, :turnEndSQL)
            """,
            empireSQL = empire,planetSQL = planet, turnSQL = turn, turnEndSQL = 3)

            connection.commit()

        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro ocorreu:{}".format(e))
            error = True
            connection.rollback()

        finally:
            cursor.close()
            self.colonies.append(Colony(empire,planet,turn))
            return error