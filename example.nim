# Minimal example of usage
import snircl

proc main () =

 var
  myIRC: PIrc
 new myIRC
 snircl.bColorOut = true          # for these nice colours and stuff

 myIRC.nickName = "Sylphy"        # Actual nick to be used
 myIRC.userName = "Sylphy"
 myIRC.realname = "Sylphy-sama"
 myIRC.channels = @["#Senketsu","#Sylphy"]
 myIRC.network = "irc.stormbit.net"
 myIRC.port = 6667
 myIRC.servPass = ""
 myIRC.nickPass = ""

 if myIRC.connect():
  while myIRC.handleData() == 0:  # library parses data
   myIRC.handleEvent()            # handles certain situations
   myIRC.printEventMsg()          # (Optional) If you want to print out events
   # your (bot/client) handle whatever
 else:
  echo("*Notice: Connecting failed,exiting.")

when isMainModule: main()
