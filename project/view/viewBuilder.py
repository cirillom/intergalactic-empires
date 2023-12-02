import os

class ViewBuilder:
    
    PURPLE = '\033[95m'
    BLUE = '\033[94m'
    CYAN = '\033[96m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RED = '\033[91m'
    WHITE = '\033[0m'

    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
        
    def clear(self):
      clear = lambda: os.system('cls')
      clear()

    def printMessage(self, message):
       print(message)
        
    def printLogo(self):
        logo = self.CYAN+r""".___        __                            .__                 __  .__        
|   | _____/  |_  ___________"""+self.YELLOW+'*'+self.CYAN+r""" _________  |  | _____ """+self.YELLOW+'*'+self.CYAN+r"""  _____/  |_|__| ____ """+self.YELLOW+'*'+self.CYAN+r"""
|   |/    \   __\/ __ \_  __ \/ ___\__  \ |  | \__  \ _/ ___\   __\  |/ ___\ 
|   |   |  \  | \  ___/|  | \/ /_/  > __ \|  |__/ __ \\  \___|  | |  \  \___ 
|___|___|  /__|  \___  >__|  \___  (____  /____(____  /\___  >__| |__|\___  >
         \/    """+self.YELLOW+'*'+self.CYAN+r"""     \/     /_____/     \/          \/     \/             \/ 
"""+self.YELLOW+'*'+self.CYAN+r"""  ___________              .__     """+self.YELLOW+'*'+self.CYAN+r"""         """+self.YELLOW+'*'+self.CYAN+r"""                    """+self.YELLOW+'*'+self.CYAN+r"""         
   \_   _____/ _____ ______ |__|______   ____   ______ """+self.YELLOW+'*'+self.CYAN+r"""                     
    |    __)_ /     \\____ \|  \_  __ \_/ __ \ /  ___/         """+self.YELLOW+'*'+self.CYAN+r"""             
    |        \  Y Y  \  |_> >  ||  | \/\  ___/ \___ \     """+self.YELLOW+'*'+self.CYAN+r"""          """+self.YELLOW+'*'+self.CYAN+r"""       
   /_______  /__|_|  /   __/|__||__|    \___  >____  >                    """+self.YELLOW+'*'+self.CYAN+r"""  
"""+self.YELLOW+'*'+self.CYAN+r"""          \/      \/|__|                   \/     \/            """+self.YELLOW+'*'+self.CYAN+r"""           """
        print(logo + self.WHITE)
        