# Import view
from view.viewBuilder import ViewBuilder

# Import all models
from models.empire import Empire
from models.planet import Planet


class GameController:

    def __init__(self):
        self.view = ViewBuilder()

    def startGameLoop(self):
        self.view.clear()
        turn = 0
        self.view.printLogo()

        self.view.printMessage('\nPress enter to continue...')

        if input() == '-1':
            exit()

        self.view.clear()

        while(1):
            print(turn)

            if input() == '-1':
                exit()

            self.view.clear()
            turn+=1