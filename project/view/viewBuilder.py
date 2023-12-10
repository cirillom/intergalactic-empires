import os
import platform

class ViewBuilder:
    
   SYSTEM = '\033[95m'
   BLUE = '\033[94m'
   CYAN = '\033[96m'
   GREEN = '\033[92m'
   YELLOW = '\033[93m'
   RED = '\033[91m'
   WHITE = '\033[0m'
        
   def clear(self):
      system_name = platform.system()
      if system_name == 'Windows':
         os.system('cls')
      elif system_name in ['Linux', 'Darwin']:
         os.system('clear')
      else:
         print()

   def printColorMessage(self,message,color):
      match color:
         case 'Azul':
               print(ViewBuilder.BLUE + message + ViewBuilder.WHITE)
         case 'Verde':
               print(ViewBuilder.GREEN + message + ViewBuilder.WHITE)
         case 'Vermelho':
               print(ViewBuilder.RED + message + ViewBuilder.WHITE)
         case 'Amarelo':
               print(ViewBuilder.YELLOW + message + ViewBuilder.WHITE)

   def printMessage(self, message):
      print(self.WHITE + message)

   def printSystem(self, message):
      print(self.SYSTEM+message)
        
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
      print(logo)
        