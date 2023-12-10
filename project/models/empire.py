import oracledb

from view.viewBuilder import ViewBuilder

class Empire:
    def __init__(self,name,color):
        self.name = name
        self.color = color
        self.qtdPlanets = 0


class Empires:

    empires = []
    def __init__(self):
        self.view = ViewBuilder()

    def insertEmpire(self,name,color,connection):
        cursor = connection.cursor()

        error = False
        try:
            cursor.execute("""
            INSERT INTO IMPERIO (NOME, COR)
            VALUES (:nameSQL, :colorSQL)
            """,
            nameSQL = name,colorSQL = color)

            connection.commit()

        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro: {e}".format(e))
            error = True
            connection.rollback()

        finally:
            self.empires.append(Empire(name,color))
            cursor.close()
            return error
    
    #List all empires 
    def listEmpires(self,connection):
        cursor = connection.cursor()

        try:
            cursor.execute("SELECT NOME, COR FROM IMPERIO")
            rows = cursor.fetchall()
            if not rows:
                self.view.printSystem("Nenhum retorno em Impérios.")
            else:
                self.view.printMessage("Jogadores cadastrados:")
                for name,color in rows:
                    self.view.printColorMessage("Império:{}".format(name),color)

        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro: {e}".format(e))

        finally:
            cursor.close()

    #Show all colonies from all empires in a given turn using data from the database
    def printAllColoniesFromAllEmpiresInAGivenTurn(self,turn,connection):
        cursor = connection.cursor()

        self.view.clear()
        self.view.printMessage("Nesse turno, as colônias ficaram assim:")
        
        try:
            cursor.execute("""SELECT I.NOME,P.NOME,I.COR,NVL(P.QTD_AGUA * P.ESTRUTURAS_MAX, 0)
                                AS PODER FROM PLANETA P 
                                JOIN COLONIA C ON P.NOME = C.PLANETA AND C.TURNO_INICIAL <= :TURNO
                                AND (C.TURNO_FINAL >= :TURNO OR C.TURNO_FINAL IS NULL) 
                                JOIN IMPERIO I ON I.NOME = C.IMPERIO 
                                ORDER BY I.NOME, NVL(P.QTD_AGUA * P.ESTRUTURAS_MAX, 0) DESC""",TURNO = turn)
            rows = cursor.fetchall()
            if not rows:
                self.view.printSystem("Nenhum retorno em Impérios.")
            else:
                for name, planet, color, power in rows:
                    self.view.printColorMessage("Império:{}  Planeta:{}   Poder:{}".format(name,planet,power),color)              
        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro: {e}".format(e))
        
        finally:
            cursor.close()

    #Show ranking using data from the database
    def printRanking(self,connection):
        cursor = connection.cursor()
        self.view.clear()
        ranking = 0
        try:
            cursor.execute("""SELECT C.IMPERIO,I.COR, NVL(SUM(P.QTD_AGUA * P.ESTRUTURAS_MAX), 0) AS PODER FROM PLANETA P
                            JOIN COLONIA C ON P.NOME = C.PLANETA AND C.TURNO_INICIAL <= :TURNO AND (C.TURNO_FINAL >= :TURNO
                            OR C.TURNO_FINAL IS NULL) JOIN IMPERIO I ON I.NOME = C.IMPERIO
                            GROUP BY C.IMPERIO, I.COR 
                            ORDER BY NVL(SUM(P.QTD_AGUA * P.ESTRUTURAS_MAX), 0) DESC""",TURNO = 3)
            rows = cursor.fetchall()
            if not rows:
                self.view.printSystem("Nenhum retorno em Impérios.")
            else:
                for name, color, power in rows:
                    ranking+=1
                    self.view.printColorMessage("{}º - Império:{}  Poder Total:{}".format(ranking,name,power),color)    
        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro: {e}".format(e))

        finally:
            cursor.close()

        