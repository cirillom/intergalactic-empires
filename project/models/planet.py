import oracledb

from view.viewBuilder import ViewBuilder


class Planet:
    
    def __init__(self,name,coordinate,estruturasMax,agua):
        self.name = name
        self.coordinate  = coordinate
        self.estruturasMax = estruturasMax
        self.agua = agua

class Planets:

    planets = []


    def __init__(self):
        self.view = ViewBuilder()


    def getPlanetsDB(self):
        self.view.printSystem("Conectando...")
        self.connection = oracledb.connect(user="a12547792",password="ChequeMate221",dsn="orclgrad1.icmc.usp.br:1521/pdb_elaine.icmc.usp.br")
        self.cursor = self.connection.cursor()

        try:
            self.cursor.execute("select nome, coordenadas, estruturas_max,qtd_agua from planeta")
            rows = self.cursor.fetchall()
            if not rows:
                self.view.printSystem("Nenhum retorno em Planetas.")
            else:
                i = 0
                for name, coordinate,estruturasMax,agua in rows:
                    self.planets.append(Planet(name,coordinate,estruturasMax,agua))
                    
        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro:{e}".format(e))

    def listAllPlanets(self,complete):
        self.listSomePlanets([False,False,False,False,False,False,False,False,False],complete)

    def listSomePlanets(self,chosed):
        for i in range(len(self.planets)):
            if chosed[i] == False:
                self.view.printMessage("{} - Nome:{}    Coordenadas:{} ".format(i+1,self.planets[i].name,self.planets[i].coordinate))