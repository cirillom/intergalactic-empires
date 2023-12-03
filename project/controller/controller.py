import oracledb

# Import view
from view.viewBuilder import ViewBuilder

# Import all models
from models.empire import Empires
from models.planet import Planets
from models.colony import Colonies


class GameController:

    nPlayers = 0
    

    def __init__(self):
        self.view = ViewBuilder()
        self.empires = Empires()
        self.planets = Planets()
        self.colonies = Colonies()

    def restartGame(self):
        self.view.printSystem("Conectando...")
        self.connection = oracledb.connect(user="a12547792",password="ChequeMate221",dsn="orclgrad1.icmc.usp.br:1521/pdb_elaine.icmc.usp.br")
        self.cursor = self.connection.cursor()
        try:
            self.cursor.execute("DELETE FROM COLONIA")
            self.cursor.execute("DELETE FROM IMPERIO")
            self.connection.commit()

        except oracledb.DatabaseError as e:
            self.view.printSystem("Erro:{}".format(e))
        finally:
            self.cursor.close()

    def mainScreen(self):
        self.view.clear()

        self.view.printLogo()

        self.view.printMessage('\nPressione qualquer coisa para continuar... (-1 para sair do jogo!)')
        if input() == '-1':
            exit()
        self.view.clear()

        self.view.printMessage('Cadastre seu império e então tente colonizar os planetas que podem possuir mais poder!')
        self.view.printMessage('\nOs jogadores disputarão 9 planetas em 3 turnos!')
        self.view.printMessage('\nPressione qualquer coisa para continuar... (-1 para sair do jogo!)')
        if input() == '-1':
            exit()

        self.restartGame()

        self.view.clear()

        self.getPlayers()

    def getPlayers(self):

        while(1):
            self.view.printMessage('Quantos jogadores irão jogar? (inteiro de 1 a 3)')
            try:
                self.nPlayers = int(input())
            except:  
                self.view.printSystem('Erro! Insira um inteiro!')
                continue

            if(self.nPlayers > 0 and self.nPlayers<=3):
                break
            else:
                self.view.printSystem('Erro! Insira algo entre 1 e 3!')

        names = []
        colorsForEmpires = []
        colors = ["Azul","Verde","Vermelho","Amarelo"]
        colorsUsed = [False,False,False,False]

        for i in range (0,self.nPlayers):
            self.view.clear()
            while(1):
                self.view.printMessage('Qual o nome do Império {}? Escolher um nome único! Até 50 caracteres'.format(i+1))
                
                currentName = input()

                if len(currentName)>50:
                    self.view.printSystem('Erro! Insira um nome menos de 50 caracteres!')
                    continue

                if currentName in names:
                    self.view.printSystem('Erro! Insira um nome disponível!')
                    continue

                while(1):
                    self.view.printMessage('Qual a cor do Império {}? Escolher entre 1 e 4 de um valor disponível!'.format(i+1))
                    for j in range(0,4):
                        if colorsUsed[j] == False:
                            self.view.printColorMessage('{} - {}'.format(j+1,colors[j]),colors[j])
                    try:
                        colorInt = int(input())

                    except:  
                        self.view.printSystem('Erro! Insira um inteiro!')
                        continue
                    if(colorsUsed[colorInt-1] == True):
                        self.view.printSystem('Erro! Insira uma cor disponível!')
                        continue
                    if(colorInt > 0 and colorInt<=4):
                        break
                    else:
                        self.view.printSystem('Erro! Escolha uma cor entre 1 e 4!')

                if self.empires.insertEmpire(currentName,colors[colorInt-1]) == False:
                    names.append(currentName)
                    colorsForEmpires.append(colors[colorInt-1])
                    colorsUsed[colorInt-1] = True
                    break

    
        self.view.clear()
        self.empires.listEmpires()

        self.view.printMessage('\nPressione qualquer coisa para continuar... (-1 para sair do jogo!)')
        if input() == '-1':
            exit()

        self.view.clear()
        self.startGameLoop()
    
    def startGameLoop(self):

        planetsChosen = [False,False,False,False,False,False,False,False,False]
        self.planets.getPlanetsDB()

        for turno in range(0,3):
            for j in range(0,self.nPlayers):
                self.view.clear()
                choice = 0
                while(1):
                    self.view.printMessage("Turno {}".format(turno))
                    self.view.printMessage("Planetas:")
                    self.planets.listSomePlanets(planetsChosen)
                    self.view.printMessage('Jogador {}, escolha um planeta para colonizar! Apenas são válidos palentas ainda não colonizados.'.format(j+1))
                    try:
                        choice = int(input())
                    except:  
                        self.view.printSystem('Erro! Insira um inteiro!')
                        continue

                    if(choice <= 0 or choice>9):
                        self.view.printSystem('Erro! Insira algo entre 1 e 9!')
                        continue

                    if(planetsChosen[choice -1] == True):
                        self.view.printSystem('Erro! Insira um planeta disponível!')
                        continue

                    if self.colonies.insertColony(self.empires.empires[j].name,self.planets.planets[choice-1].name,turno) == False:
                        planetsChosen[choice-1] = True
                        break

            self.view.clear()

            self.empires.printAllColoniesFromAllEmpiresInAGivenTurn(turno)

            self.view.printMessage('\nPressione qualquer coisa para continuar... (-1 para sair do jogo!)')
            if input() == '-1':
                exit()
            self.view.clear


        self.endGame()
    
    def endGame(self):
        self.empires.printRanking()
        self.view.printMessage("Fim!")
        