#tag Module
Protected Module GeneralStuff
	#tag Method, Flags = &h0
		Sub BuildInitialDistroList()
		  dim newDistro as Distro
		  
		  ClearDistroList
		  
		  // Add all of the NPC distros that exist at the beginning of the game
		  
		  newDistro = new Distro
		  newDistro.Name = "Ooboontoo"
		  newDistro.Users = 100000
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "FloppyBeanie"
		  newDistro.Users = 50000
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "xTr333me"
		  newDistro.Users = 25000
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "CuteLittleDoggy"
		  newDistro.Users = 15000
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "Trumpet"
		  newDistro.Users = 1
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "Kooboonotoo"
		  newDistro.Users = 45000
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "LooseWare"
		  newDistro.Users = 5000
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "OpenSnuggle"
		  newDistro.Users = 500
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "TeddyBearLinux"
		  newDistro.Users = 50
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "RedundantLinux"
		  newDistro.Users = 200
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "Plebian"
		  newDistro.Users = 8500
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "b00nd0x"
		  newDistro.Users = 2500
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "FreeHugz"
		  newDistro.Users = 900
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "Derpnix"
		  newDistro.Users = 800
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "Unpronounceable"
		  newDistro.Users = 1500
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "Lozenge"
		  newDistro.Users = 4200
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "Gat3way"
		  newDistro.Users = 3350
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "Prune"
		  newDistro.Users = 810
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "ChakaLaka"
		  newDistro.Users = 2100
		  OtherDistros.Append newDistro
		  
		  newDistro = new Distro
		  newDistro.Name = "SunGlassesNix"
		  newDistro.Users = 15
		  OtherDistros.Append newDistro
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BuildInitialPackageList()
		  dim newPackage as Package
		  
		  ClearPackageList
		  
		  // Desktop Environments
		  
		  newPackage = new Package
		  newPackage.Name = "Midget"
		  newPackage.Bugs = 2
		  newPackage.Description = "Lightweight, simple desktop environment."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 3
		  newPackage.Popularity = 20
		  newPackage.SizeInMB = 20
		  newPackage.TypeOfSoftware = kTypeDesktopEnvironment
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "QDE"
		  newPackage.Bugs = 3
		  newPackage.Description = "The Q Desktop Environment.  Big.  Slow.  Lots and lots of desktop widgets."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 3
		  newPackage.Popularity = 10
		  newPackage.SizeInMB = 50
		  newPackage.TypeOfSoftware = kTypeDesktopEnvironment
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "UCDE"
		  newPackage.Bugs = 0
		  newPackage.Description = "The Ultra Confusing Desktop Environment.  There are no icons.  Only terminals."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 20
		  newPackage.Popularity = 1
		  newPackage.SizeInMB = 1
		  newPackage.TypeOfSoftware = kTypeDesktopEnvironment
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  
		  // Web Browsers
		  
		  newPackage = new Package
		  newPackage.Name = "FlamingRodent"
		  newPackage.Bugs = 4
		  newPackage.Description = "A big, powerful web browser.  Lots of features and lots of extensions."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 3
		  newPackage.Popularity = 15
		  newPackage.SizeInMB = 10
		  newPackage.TypeOfSoftware = kTypeWebBrowser
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "ShmoogleShrome"
		  newPackage.Bugs = 2
		  newPackage.Description = "Lightweight and superfast web browser."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 3
		  newPackage.Popularity = 10
		  newPackage.SizeInMB = 10
		  newPackage.TypeOfSoftware = kTypeWebBrowser
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "Text-O-Web"
		  newPackage.Bugs = 0
		  newPackage.Description = "A Text-only web browser that runs in the Terminal."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 20
		  newPackage.Popularity = 0
		  newPackage.SizeInMB = 1
		  newPackage.TypeOfSoftware = kTypeWebBrowser
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  // Office Suite
		  
		  newPackage = new Package
		  newPackage.Name = "ReallyFreeOffice"
		  newPackage.Bugs = 4
		  newPackage.Description = "A big, powerful office suite."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 5
		  newPackage.Popularity = 15
		  newPackage.SizeInMB = 60
		  newPackage.TypeOfSoftware = kTypeOfficeSuite
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "SpAnDeX"
		  newPackage.Bugs = 1
		  newPackage.Description = "Hard to use and complicated way to build documents."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 15
		  newPackage.Popularity = 2
		  newPackage.SizeInMB = 3
		  newPackage.TypeOfSoftware = kTypeOfficeSuite
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "OkayOffice"
		  newPackage.Bugs = 1
		  newPackage.Description = "This office suite... is pretty ok."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 10
		  newPackage.Popularity = 10
		  newPackage.SizeInMB = 40
		  newPackage.TypeOfSoftware = kTypeOfficeSuite
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  // Games
		  
		  newPackage = new Package
		  newPackage.Name = "PenguinZoomer"
		  newPackage.Bugs = 1
		  newPackage.Description = "Race around and pretend that penguins are like cars."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 3
		  newPackage.Popularity = 8
		  newPackage.SizeInMB = 20
		  newPackage.TypeOfSoftware = kTypeGame
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "FragBlast4000"
		  newPackage.Bugs = 2
		  newPackage.Description = "Fancy 3D graphics and fast paced shooting of other people."
		  newPackage.isOpenSource = false
		  newPackage.NerdCred = 1
		  newPackage.Popularity = 15
		  newPackage.SizeInMB = 120
		  newPackage.TypeOfSoftware = kTypeGame
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "BurstABubble"
		  newPackage.Bugs = 0
		  newPackage.Description = "There are bubbles.  You hate bubbles.  Pop those bubbles."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 20
		  newPackage.SizeInMB = 25
		  newPackage.TypeOfSoftware = kTypeGame
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "JustCards"
		  newPackage.Bugs = 0
		  newPackage.Description = "It's a card game."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 5
		  newPackage.SizeInMB = 20
		  newPackage.TypeOfSoftware = kTypeGame
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "TapYerToes"
		  newPackage.Bugs = 1
		  newPackage.Description = "Tap your toes to the beat of very boring music."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 1
		  newPackage.SizeInMB = 15
		  newPackage.TypeOfSoftware = kTypeGame
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "CityMax"
		  newPackage.Bugs = 2
		  newPackage.Description = "Design and run a very fancy city."
		  newPackage.isOpenSource = false
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 15
		  newPackage.SizeInMB = 120
		  newPackage.TypeOfSoftware = kTypeGame
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "CouchTrainer"
		  newPackage.Bugs = 3
		  newPackage.Description = "Teach a couch how to be a good couch."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 5
		  newPackage.SizeInMB = 65
		  newPackage.TypeOfSoftware = kTypeGame
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  // Graphics Editing
		  
		  newPackage = new Package
		  newPackage.Name = "PixelPusher"
		  newPackage.Bugs = 0
		  newPackage.Description = "A very simple image editor."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 1
		  newPackage.Popularity = 2
		  newPackage.SizeInMB = 2
		  newPackage.TypeOfSoftware = kTypeGraphicsEditing
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "The Dork"
		  newPackage.Bugs = 2
		  newPackage.Description = "Robust, powerful graphics editor."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 5
		  newPackage.Popularity = 12
		  newPackage.SizeInMB = 65
		  newPackage.TypeOfSoftware = kTypeGraphicsEditing
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "Pictures-In-Folders"
		  newPackage.Bugs = 0
		  newPackage.Description = "A simple photo gallery for organizing images."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 8
		  newPackage.SizeInMB = 8
		  newPackage.TypeOfSoftware = kTypeGraphicsEditing
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "PainterMcPaint"
		  newPackage.Bugs = 1
		  newPackage.Description = "Good for painting.  Bad for anything else."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 3
		  newPackage.SizeInMB = 150
		  newPackage.TypeOfSoftware = kTypeGraphicsEditing
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  // Programming
		  
		  newPackage = new Package
		  newPackage.Name = "LunarBlackout"
		  newPackage.Bugs = 4
		  newPackage.Description = "A good, flexible integrated development environment."
		  newPackage.isOpenSource = true
		  newPackage.NerdCred = 10
		  newPackage.Popularity = 4
		  newPackage.SizeInMB = 120
		  newPackage.TypeOfSoftware = kTypeProgramming
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "JustPascal"
		  newPackage.Bugs = 0
		  newPackage.Description = "Pascal programming tools."
		  newPackage.isOpenSource = true
		  newPackage.NerdCred = 11
		  newPackage.Popularity = 1
		  newPackage.SizeInMB = 40
		  newPackage.TypeOfSoftware = kTypeProgramming
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "Lunduke Development Kit"
		  newPackage.Bugs = 0
		  newPackage.Description = "The most awesome programming language.  Ever."
		  newPackage.isOpenSource = true
		  newPackage.NerdCred = 15
		  newPackage.Popularity = 15
		  newPackage.SizeInMB = 10
		  newPackage.TypeOfSoftware = kTypeProgramming
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "LargeTalk"
		  newPackage.Bugs = 0
		  newPackage.Description = "Considered to be the Grand-daddy of programming tools."
		  newPackage.isOpenSource = true
		  newPackage.NerdCred = 20
		  newPackage.Popularity = 2
		  newPackage.SizeInMB = 10
		  newPackage.TypeOfSoftware = kTypeProgramming
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "EchsCode"
		  newPackage.Bugs = 7
		  newPackage.Description = "This is a terrible development environment.  Nobody likes this or wants to use it."
		  newPackage.isOpenSource = False
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 0
		  newPackage.SizeInMB = 900
		  newPackage.TypeOfSoftware = kTypeProgramming
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  // Communication
		  
		  newPackage = new Package
		  newPackage.Name = "Mailinator"
		  newPackage.Bugs = 1
		  newPackage.Description = "Super advanced email client."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 12
		  newPackage.SizeInMB = 80
		  newPackage.TypeOfSoftware = kTypeCommunication
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "Chatchatchat"
		  newPackage.Bugs = 1
		  newPackage.Description = "You know.  For chatting."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 5
		  newPackage.SizeInMB = 50
		  newPackage.TypeOfSoftware = kTypeCommunication
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "Fir"
		  newPackage.Bugs = 0
		  newPackage.Description = "Terminal-only email client.  "
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 5
		  newPackage.Popularity = 1
		  newPackage.SizeInMB = 1
		  newPackage.TypeOfSoftware = kTypeCommunication
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "IRC-o-Matic"
		  newPackage.Bugs = 3
		  newPackage.Description = "The only IRC client that matters."
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 4
		  newPackage.Popularity = 2
		  newPackage.SizeInMB = 6
		  newPackage.TypeOfSoftware = kTypeCommunication
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  // Utility
		  
		  newPackage = new Package
		  newPackage.Name = "Calculator"
		  newPackage.Bugs = 0
		  newPackage.Description = "You do want a calculator, don't you?"
		  newPackage.isOpenSource = True
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 1
		  newPackage.SizeInMB = 1
		  newPackage.TypeOfSoftware = kTypeUtility
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  // Multimedia
		  
		  newPackage = new Package
		  newPackage.Name = "Video Player Thing"
		  newPackage.Bugs = 1
		  newPackage.Description = "Plays videos.  Sometimes.  Then it crashes."
		  newPackage.isOpenSource = true
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 1
		  newPackage.SizeInMB = 10
		  newPackage.TypeOfSoftware = kTypeMultimedia
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "vidCastGrabber"
		  newPackage.Bugs = 1
		  newPackage.Description = "Downloads and plays video podcasts."
		  newPackage.isOpenSource = true
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 3
		  newPackage.SizeInMB = 55
		  newPackage.TypeOfSoftware = kTypeMultimedia
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		  
		  newPackage = new Package
		  newPackage.Name = "emTeeVee"
		  newPackage.Bugs = 2
		  newPackage.Description = "Automatically generates music videos."
		  newPackage.isOpenSource = False
		  newPackage.NerdCred = 0
		  newPackage.Popularity = 2
		  newPackage.SizeInMB = 120
		  newPackage.TypeOfSoftware = kTypeMultimedia
		  newPackage.Version = 1.0
		  PackagesAvailable.Append newPackage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CenterContainer(TheControl as ContainerControl)
		  TheControl.left = (frmMain.canMain.Width / 2) - (TheControl.Width / 2)
		  TheControl.top = (frmMain.canMain.Height / 2) - (TheControl.Height / 2)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearDistroList()
		  dim i as integer
		  
		  if OtherDistros.Ubound > -1 then
		    for i = OtherDistros.Ubound DownTo 0
		      
		      OtherDistros.Remove(i)
		      
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearPackageList()
		  dim i as integer
		  
		  if PackagesAvailable.Ubound > -1 then
		    for i = PackagesAvailable.Ubound DownTo 0
		      
		      PackagesAvailable.Remove(i)
		      
		    next
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GenerateSaveXML() As string
		  dim s as string
		  dim i as integer
		  
		  s = "<!-- " + app.LongVersion + "-->" + EndOfLine
		  
		  s = s + "<root Name=""Save Game"" Date=""" + str(TheDate.TotalSeconds) + """ LocalDistro=""" + MyDistro.Name + """>" + EndOfLine
		  
		  // Write all Packages
		  s = s + "<packages>" + EndOfLine
		  for i = 0 to PackagesAvailable.Ubound
		    s = s + PackagesAvailable(i).GetPackageXML + EndOfLine
		  next
		  s = s + "</packages>" + EndOfLine
		  
		  // Write all distros
		  s = s + "<distros>" + EndOfLine
		  s = s + MyDistro.GetDistroXML + EndOfLine // Write my local distro
		  for i = 0 to OtherDistros.Ubound
		    s = s + OtherDistros(i).GetDistroXML + EndOfLine
		  next
		  s = s + "</distros>" + EndOfLine
		  
		  // Write all the events
		  s = s + "<events>" + EndOfLine
		  if frmMain.myConNotifications.msgText.Ubound > -1 then
		    for i = 0 to frmMain.myConNotifications.msgText.Ubound
		      s = s + "<event message=""" + frmMain.myConNotifications.msgText(i) + """ date=""" + str(frmMain.myConNotifications.msgDate(i).totalSeconds) + """/>" + EndOfLine
		    next
		  end if
		  s = s + "</events>" + EndOfLine
		  s = s + "</root>" + EndOfLine
		  
		  Return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistro(i as integer) As distro
		  if i = -1 then
		    Return MyDistro
		  else
		    Return OtherDistros(i)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroIndexFromMMOEmail(email as string) As integer
		  dim i as integer
		  
		  if OtherDistros.Ubound > -1 then
		    
		    for i = 0 to OtherDistros.Ubound
		      
		      if OtherDistros(i).MMOEmail = email then
		        Return i
		      end if
		      
		    next
		    
		  end if
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroIndexFromName(name as string) As integer
		  dim i as integer
		  
		  if OtherDistros.Ubound > -1 then
		    
		    for i = 0 to OtherDistros.Ubound
		      
		      if OtherDistros(i).Name = name then
		        Return i
		      end if
		      
		    next
		    
		  end if
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageIndexFromName(name as string) As integer
		  dim i as integer
		  
		  if PackagesAvailable.Ubound > -1 then
		    
		    for i = 0 to PackagesAvailable.Ubound
		      
		      if PackagesAvailable(i).Name = name then
		        Return i
		      end if
		      
		    next
		    
		  end if
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRandomDistro() As Distro
		  // Process Random Element
		  dim r as Random
		  r = new Random
		  r.Seed = TheDate.TotalSeconds
		  
		  dim i as integer
		  
		  i = Round(r.InRange(-1,OtherDistros.Ubound))
		  
		  if i = -1 then
		    Return MyDistro
		  else
		    Return OtherDistros(i)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetWorkersPaidForPackage(atindex as integer) As integer
		  dim i as integer
		  dim total as integer
		  
		  total = 0
		  
		  total = MyDistro.GetWorkersPaidForPackage(atindex)
		  
		  // Loop through all distros
		  for i = 0 to OtherDistros.Ubound
		    
		    total = total + OtherDistros(i).GetWorkersPaidForPackage(atindex)
		    
		  next
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetWorkersVolunteersForPackage(atindex as integer) As integer
		  dim i as integer
		  dim total as integer
		  
		  total = 0
		  
		  total = MyDistro.GetWorkersVolunteersForPackage(atindex)
		  
		  // Loop through all distros
		  for i = 0 to OtherDistros.Ubound
		    
		    total = total + OtherDistros(i).GetWorkersVolunteersForPackage(atindex)
		    
		  next
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IncrementByADay()
		  If GameMode = KModeOnline then
		    
		    frmMain.lblDate.Text = TheDate.AbbreviatedDate + " " + TheDate.ShortTime
		    
		    'GeneralStuff.myClientSocket.FetchTimeUpdate
		    'GeneralStuff.myClientSocket.FetchFullUpdate(MyDistro.MMOEmail, MyDistro.MMOPass)
		    
		  ElseIf GameMode = kModeLocal then
		    
		    TheDate.Day = TheDate.Day + 1
		    frmMain.lblDate.Text = TheDate.AbbreviatedDate
		    
		    // Process Day By Day Changes
		    NewDayNewUsers
		    NewDayNewWorkers
		    NewDayNewBugs
		    NewDayNewProductivity
		    
		    // Random Events
		    RandomEvent
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftAlignContainer(TheControl as ContainerControl)
		  TheControl.left = frmMain.canMain.Width - TheControl.Width - 5
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadGame(f as folderitem)
		  Dim fileStream as TextInputStream
		  dim s as string
		  dim i as integer
		  
		  If f <> Nil then
		    
		    fileStream=TextInputStream.Open(f)
		    
		    s = fileStream.ReadAll
		    
		    LoadSaveFileXML(s)
		    
		    fileStream.Close
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadSaveFileXML(thexml as string)
		  dim xdoc as XmlDocument
		  dim node as XmlNode
		  
		  dim newPackage as Package
		  
		  isFirstRun = false
		  
		  xdoc = new XmlDocument
		  
		  xdoc.LoadXml(thexml)
		  
		  node = xdoc.Child(1).FirstChild.FirstChild
		  
		  ClearPackageList
		  
		  GeneralStuff.TheDate = new date
		  GeneralStuff.TheDate.TotalSeconds = Round(val(xdoc.Child(1).GetAttribute("Date")))
		  
		  'frmMain.myConMainMenu.lblScenario.Text = "Scenario : " + xdoc.Child(1).GetAttribute("Name")
		  
		  // Load in the packages
		  do until node = Nil
		    
		    if node <> nil then
		      newPackage = new Package
		      newPackage.Name = node.GetAttribute("Name")
		      newPackage.Bugs = val(node.GetAttribute("Bugs"))
		      newPackage.Description = node.GetAttribute("Description")
		      if Lowercase(node.GetAttribute("isOpenSource")) = "true" then
		        newPackage.isOpenSource = True
		      else
		        newPackage.isOpenSource = false
		      end if
		      newPackage.NerdCred = val(node.GetAttribute("NerdCred"))
		      newPackage.Popularity = val(node.GetAttribute("Popularity"))
		      newPackage.SizeInMB = val(node.GetAttribute("SizeInMB"))
		      newPackage.TypeOfSoftware =val(node.GetAttribute("TypeOfSoftware"))
		      newPackage.Version = val(node.GetAttribute("Version"))
		      PackagesAvailable.Append newPackage
		      
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  // Refresh package lists
		  frmMain.myConPackageSelection.UpdatePackageList
		  frmMain.myConWorkerAssignment.UpdatePackageList
		  
		  // Load in Distros
		  ClearDistroList
		  
		  dim newDistro as Distro
		  dim distCounter as integer
		  
		  node = xdoc.Child(1).Child(1).FirstChild
		  
		  do until node = Nil
		    
		    if node <> nil then
		      
		      if distCounter = 0 then
		        
		        MyDistro = new Distro
		        MyDistro.Name = node.GetAttribute("Name")
		        MyDistro.Users = val(node.GetAttribute("Users"))
		        MyDistro.Version = val(node.GetAttribute("Version"))
		        MyDistro.LoadInPackagesFromList(node.GetAttribute("Packages"))
		        MyDistro.LoadInWorkersVolunteersFromList(node.GetAttribute("WorkersVolunteerAssigned"))
		        MyDistro.LoadInWorkersPaidFromList(node.GetAttribute("WorkersPaidAssigned"))
		        MyDistro.WorkersPaid = val(node.GetAttribute("WorkersPaid"))
		        MyDistro.WorkersVolunteers = val(node.GetAttribute("WorkersVolunteer"))
		        MyDistro.ReleasedVer = val(node.GetAttribute("ReleasedVer"))
		        MyDistro.ReleasedDate = new date
		        MyDistro.ReleasedDate.TotalSeconds = val(node.GetAttribute("ReleasedDate"))
		        MyDistro.ReleasedBugs = val(node.GetAttribute("ReleasedBugs"))
		        
		        // Update the edit packages list
		        frmMain.myConPackageSelection.UpdatePackageList
		        'MsgBox node.GetAttribute("WorkersVolunteerAssigned")
		      else
		        
		        newDistro = new Distro
		        newDistro.Name = node.GetAttribute("Name")
		        newDistro.Users = val(node.GetAttribute("Users"))
		        newDistro.Version = val(node.GetAttribute("Version"))
		        newDistro.LoadInPackagesFromList(node.GetAttribute("Packages"))
		        
		        newDistro.LoadInWorkersVolunteersFromList(node.GetAttribute("WorkersVolunteerAssigned"))
		        newDistro.LoadInWorkersPaidFromList(node.GetAttribute("WorkersPaidAssigned"))
		        newDistro.WorkersPaid = val(node.GetAttribute("WorkersPaid"))
		        newDistro.WorkersVolunteers = val(node.GetAttribute("WorkersVolunteer"))
		        
		        newDistro.ReleasedVer = val(node.GetAttribute("ReleasedVer"))
		        newDistro.ReleasedDate = new date
		        newDistro.ReleasedDate.TotalSeconds = val(node.GetAttribute("ReleasedDate"))
		        newDistro.ReleasedBugs = val(node.GetAttribute("ReleasedBugs"))
		        
		        OtherDistros.Append newDistro
		        
		      end if
		      
		      distCounter = distCounter + 1
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  node = xdoc.Child(1).Child(2).FirstChild
		  
		  do until node = Nil
		    
		    if node <> nil then
		      
		      frmMain.myConNotifications.AddNewMessage(node.GetAttribute("message"))
		      frmMain.myConNotifications.msgDate(frmMain.myConNotifications.msgDate.Ubound).TotalSeconds = val(node.GetAttribute("date"))
		      
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  frmMain.myConMainMenu.Visible = false
		  frmMain.myConDistoStats.Visible = true
		  frmMain.myConDistroRank.Visible = true
		  frmMain.myConNotifications.Visible = true
		  frmMain.myConOverView.Visible = true
		  frmMain.timeDayChange.Mode = 2
		  'frmMain.myConNotifications.ShowAllMessages
		  
		Exception
		  MsgBox "There was an error reading in the Save Game file."
		  BuildInitialDistroList
		  BuildInitialPackageList
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadScenario(thexml as String)
		  dim xdoc as XmlDocument
		  dim node as XmlNode
		  
		  dim newPackage as Package
		  
		  xdoc = new XmlDocument
		  
		  xdoc.LoadXml(thexml)
		  
		  node = xdoc.Child(1).FirstChild.FirstChild
		  
		  ClearPackageList
		  
		  frmMain.myConMainMenu.lblScenario.Text = "Scenario : " + xdoc.Child(1).GetAttribute("Name")
		  
		  // Load in the packages
		  do until node = Nil
		    
		    if node <> nil then
		      newPackage = new Package
		      newPackage.Name = node.GetAttribute("Name")
		      newPackage.Bugs = val(node.GetAttribute("Bugs"))
		      newPackage.Description = node.GetAttribute("Description")
		      if Lowercase(node.GetAttribute("isOpenSource")) = "true" then
		        newPackage.isOpenSource = True
		      else
		        newPackage.isOpenSource = false
		      end if
		      newPackage.NerdCred = val(node.GetAttribute("NerdCred"))
		      newPackage.Popularity = val(node.GetAttribute("Popularity"))
		      newPackage.SizeInMB = val(node.GetAttribute("SizeInMB"))
		      newPackage.TypeOfSoftware =val(node.GetAttribute("TypeOfSoftware"))
		      newPackage.Version = val(node.GetAttribute("Version"))
		      PackagesAvailable.Append newPackage
		      
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  // Refresh package lists
		  frmMain.myConPackageSelection.UpdatePackageList
		  frmMain.myConWorkerAssignment.UpdatePackageList
		  
		  // Load in Distros
		  ClearDistroList
		  
		  dim newDistro as Distro
		  
		  node = xdoc.Child(1).Child(1).FirstChild
		  
		  do until node = Nil
		    
		    if node <> nil then
		      
		      newDistro = new Distro
		      newDistro.Name = node.GetAttribute("Name")
		      newDistro.Users = val(node.GetAttribute("Users"))
		      newDistro.Version = val(node.GetAttribute("Version"))
		      newDistro.LoadInPackagesFromList(node.GetAttribute("Packages"))
		      
		      if newDistro.ReleasedDate = nil then
		        newDistro.ReleasedDate = new date
		      end if
		      
		      if newDistro.ReleasedVer = 0 then
		        newDistro.ReleasedVer = newDistro.Version -1
		      end if
		      
		      if newDistro.Name <> "" then
		        OtherDistros.Append newDistro
		      end if
		      
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  'MsgBox "Scenario successfully loaded.  Click 'New Game' to begin."
		  
		Exception
		  MsgBox "There was an error reading in the Scenario file."
		  BuildInitialDistroList
		  BuildInitialPackageList
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MMOGenerateXMLForFullUpdate(ForDistroAtIndex as integer) As string
		  dim s as string
		  dim i as integer
		  
		  s = "<!-- " + app.LongVersion + "-->" + EndOfLine
		  
		  s = s + "<root Name=""Save Game"" Date=""" + str(TheDate.TotalSeconds) + """ LocalDistro=""" + MyDistro.Name + """>" + EndOfLine
		  
		  // Write all Packages
		  s = s + "<packages>" + EndOfLine
		  for i = 0 to PackagesAvailable.Ubound
		    s = s + PackagesAvailable(i).GetPackageXML + EndOfLine
		  next
		  s = s + "</packages>" + EndOfLine
		  
		  // Write all distros
		  s = s + "<distros>" + EndOfLine
		  s = s + OtherDistros(ForDistroAtIndex).GetDistroXML + EndOfLine // Write client's local distro
		  s = s + MyDistro.GetDistroXML + EndOfLine // Write server local distro
		  for i = 0 to OtherDistros.Ubound
		    if i <> ForDistroAtIndex then // Make sure we don't send the client distro twice
		      s = s + OtherDistros(i).GetDistroXML + EndOfLine
		    end if
		  next
		  s = s + "</distros>" + EndOfLine
		  
		  // Write all the events
		  s = s + "<events>" + EndOfLine
		  if frmMain.myConNotifications.msgText.Ubound > -1 then
		    for i = 0 to frmMain.myConNotifications.msgText.Ubound
		      s = s + "<event message=""" + frmMain.myConNotifications.msgText(i) + """ date=""" + str(frmMain.myConNotifications.msgDate(i).totalSeconds) + """/>" + EndOfLine
		    next
		  end if
		  s = s + "</events>" + EndOfLine
		  s = s + "</root>" + EndOfLine
		  
		  Return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MMOGenerateXMLForFullUpdateWithoutMyDistro() As string
		  dim s as string
		  dim i as integer
		  
		  s = "<!-- " + app.LongVersion + "-->" + EndOfLine
		  
		  s = s + "<root Name=""Save Game"" Date=""" + str(TheDate.TotalSeconds) + """ LocalDistro=""" + MyDistro.Name + """>" + EndOfLine
		  
		  // Write all Packages
		  s = s + "<packages>" + EndOfLine
		  for i = 0 to PackagesAvailable.Ubound
		    s = s + PackagesAvailable(i).GetPackageXML + EndOfLine
		  next
		  s = s + "</packages>" + EndOfLine
		  
		  // Write all distros
		  s = s + "<distros>" + EndOfLine
		  's = s + OtherDistros(ForDistroAtIndex).GetDistroXML + EndOfLine // Write client's local distro
		  s = s + MyDistro.GetDistroXML + EndOfLine // Write server local distro
		  for i = 0 to OtherDistros.Ubound
		    'if i <> ForDistroAtIndex then // Make sure we don't send the client distro twice
		    s = s + OtherDistros(i).GetDistroXML + EndOfLine
		    'end if
		  next
		  s = s + "</distros>" + EndOfLine
		  
		  // Write all the events
		  s = s + "<events>" + EndOfLine
		  if frmMain.myConNotifications.msgText.Ubound > -1 then
		    for i = 0 to frmMain.myConNotifications.msgText.Ubound
		      s = s + "<event message=""" + frmMain.myConNotifications.msgText(i) + """ date=""" + str(frmMain.myConNotifications.msgDate(i).totalSeconds) + """/>" + EndOfLine
		    next
		  end if
		  s = s + "</events>" + EndOfLine
		  s = s + "</root>" + EndOfLine
		  
		  Return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMOLoadFullUpdateXML(thexml as string)
		  dim xdoc as XmlDocument
		  dim node as XmlNode
		  
		  dim newPackage as Package
		  
		  xdoc = new XmlDocument
		  
		  xdoc.LoadXml(thexml)
		  
		  node = xdoc.Child(1).FirstChild.FirstChild
		  
		  ClearPackageList
		  
		  GeneralStuff.TheDate = new date
		  GeneralStuff.TheDate.TotalSeconds = Round(val(xdoc.Child(1).GetAttribute("Date")))
		  
		  'frmMain.myConMainMenu.lblScenario.Text = "Scenario : " + xdoc.Child(1).GetAttribute("Name")
		  
		  // Load in the packages
		  do until node = Nil
		    
		    if node <> nil then
		      newPackage = new Package
		      newPackage.Name = node.GetAttribute("Name")
		      newPackage.Bugs = val(node.GetAttribute("Bugs"))
		      newPackage.Description = node.GetAttribute("Description")
		      if Lowercase(node.GetAttribute("isOpenSource")) = "true" then
		        newPackage.isOpenSource = True
		      else
		        newPackage.isOpenSource = false
		      end if
		      newPackage.NerdCred = val(node.GetAttribute("NerdCred"))
		      newPackage.Popularity = val(node.GetAttribute("Popularity"))
		      newPackage.SizeInMB = val(node.GetAttribute("SizeInMB"))
		      newPackage.TypeOfSoftware =val(node.GetAttribute("TypeOfSoftware"))
		      newPackage.Version = val(node.GetAttribute("Version"))
		      PackagesAvailable.Append newPackage
		      
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  // Refresh package lists
		  frmMain.myConPackageSelection.UpdatePackageList
		  frmMain.myConWorkerAssignment.UpdatePackageList
		  
		  // Load in Distros
		  ClearDistroList
		  
		  dim newDistro as Distro
		  dim distCounter as integer
		  
		  node = xdoc.Child(1).Child(1).FirstChild
		  
		  do until node = Nil
		    
		    if node <> nil then
		      
		      if distCounter = 0 then
		        
		        MyDistro = new Distro
		        MyDistro.Name = node.GetAttribute("Name")
		        MyDistro.Users = val(node.GetAttribute("Users"))
		        MyDistro.Version = val(node.GetAttribute("Version"))
		        MyDistro.LoadInPackagesFromList(node.GetAttribute("Packages"))
		        MyDistro.LoadInWorkersVolunteersFromList(node.GetAttribute("WorkersVolunteer"))
		        MyDistro.LoadInWorkersPaidFromList(node.GetAttribute("WorkersPaid"))
		        MyDistro.ReleasedVer = val(node.GetAttribute("ReleasedVer"))
		        MyDistro.ReleasedDate = new date
		        MyDistro.ReleasedDate.TotalSeconds = val(node.GetAttribute("ReleasedDate"))
		        MyDistro.ReleasedBugs = val(node.GetAttribute("ReleasedBugs"))
		        
		      else
		        
		        newDistro = new Distro
		        newDistro.Name = node.GetAttribute("Name")
		        newDistro.Users = val(node.GetAttribute("Users"))
		        newDistro.Version = val(node.GetAttribute("Version"))
		        newDistro.LoadInPackagesFromList(node.GetAttribute("Packages"))
		        newDistro.LoadInWorkersVolunteersFromList(node.GetAttribute("WorkersVolunteer"))
		        newDistro.LoadInWorkersPaidFromList(node.GetAttribute("WorkersPaid"))
		        newDistro.ReleasedVer = val(node.GetAttribute("ReleasedVer"))
		        newDistro.ReleasedDate = new date
		        newDistro.ReleasedDate.TotalSeconds = val(node.GetAttribute("ReleasedDate"))
		        newDistro.ReleasedBugs = val(node.GetAttribute("ReleasedBugs"))
		        
		        OtherDistros.Append newDistro
		        
		      end if
		      
		      distCounter = distCounter + 1
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  node = xdoc.Child(1).Child(2).FirstChild
		  
		  do until node = Nil
		    
		    if node <> nil then
		      
		      frmMain.myConNotifications.AddNewMessage(node.GetAttribute("message"))
		      frmMain.myConNotifications.msgDate(frmMain.myConNotifications.msgDate.Ubound).TotalSeconds = val(node.GetAttribute("date"))
		      
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  'frmMain.myConMainMenu.Visible = false
		  'frmMain.myConDistoStats.Visible = true
		  'frmMain.myConDistroRank.Visible = true
		  'frmMain.myConNotifications.Visible = true
		  'frmMain.myConOverView.Visible = true
		  'frmMain.timeDayChange.Mode = 2
		  'frmMain.myConNotifications.ShowAllMessages
		  
		Exception
		  MsgBox "There was an error reading in the Save Game file."
		  MsgBox "There was an error updating from the server.  Please quit and log back in."
		  BuildInitialDistroList
		  BuildInitialPackageList
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMOLoadFullUpdateXMLWithoutMyDistro(thexml as string)
		  dim xdoc as XmlDocument
		  dim node as XmlNode
		  
		  dim newPackage as Package
		  
		  xdoc = new XmlDocument
		  
		  xdoc.LoadXml(thexml)
		  
		  node = xdoc.Child(1).FirstChild.FirstChild
		  
		  ClearPackageList
		  
		  GeneralStuff.TheDate = new date
		  GeneralStuff.TheDate.TotalSeconds = Round(val(xdoc.Child(1).GetAttribute("Date")))
		  
		  'frmMain.myConMainMenu.lblScenario.Text = "Scenario : " + xdoc.Child(1).GetAttribute("Name")
		  
		  // Load in the packages
		  do until node = Nil
		    
		    if node <> nil then
		      newPackage = new Package
		      newPackage.Name = node.GetAttribute("Name")
		      newPackage.Bugs = val(node.GetAttribute("Bugs"))
		      newPackage.Description = node.GetAttribute("Description")
		      if Lowercase(node.GetAttribute("isOpenSource")) = "true" then
		        newPackage.isOpenSource = True
		      else
		        newPackage.isOpenSource = false
		      end if
		      newPackage.NerdCred = val(node.GetAttribute("NerdCred"))
		      newPackage.Popularity = val(node.GetAttribute("Popularity"))
		      newPackage.SizeInMB = val(node.GetAttribute("SizeInMB"))
		      newPackage.TypeOfSoftware =val(node.GetAttribute("TypeOfSoftware"))
		      newPackage.Version = val(node.GetAttribute("Version"))
		      PackagesAvailable.Append newPackage
		      
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  // Refresh package lists
		  frmMain.myConPackageSelection.UpdatePackageList
		  frmMain.myConWorkerAssignment.UpdatePackageList
		  
		  // Load in Distros
		  ClearDistroList
		  
		  dim newDistro as Distro
		  dim distCounter as integer
		  
		  node = xdoc.Child(1).Child(1).FirstChild
		  
		  do until node = Nil
		    
		    if node <> nil then
		      
		      newDistro = new Distro
		      newDistro.Name = node.GetAttribute("Name")
		      newDistro.Users = val(node.GetAttribute("Users"))
		      newDistro.Version = val(node.GetAttribute("Version"))
		      newDistro.LoadInPackagesFromList(node.GetAttribute("Packages"))
		      newDistro.LoadInWorkersVolunteersFromList(node.GetAttribute("WorkersVolunteer"))
		      newDistro.LoadInWorkersPaidFromList(node.GetAttribute("WorkersPaid"))
		      newDistro.ReleasedVer = val(node.GetAttribute("ReleasedVer"))
		      newDistro.ReleasedDate = new date
		      newDistro.ReleasedDate.TotalSeconds = val(node.GetAttribute("ReleasedDate"))
		      newDistro.ReleasedBugs = val(node.GetAttribute("ReleasedBugs"))
		      
		      OtherDistros.Append newDistro
		      
		      distCounter = distCounter + 1
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  node = xdoc.Child(1).Child(2).FirstChild
		  
		  do until node = Nil
		    
		    if node <> nil then
		      
		      frmMain.myConNotifications.AddNewMessage(node.GetAttribute("message"))
		      frmMain.myConNotifications.msgDate(frmMain.myConNotifications.msgDate.Ubound).TotalSeconds = val(node.GetAttribute("date"))
		      
		      node = node.NextSibling
		    end if
		    
		  loop
		  
		  'frmMain.myConMainMenu.Visible = false
		  'frmMain.myConDistoStats.Visible = true
		  'frmMain.myConDistroRank.Visible = true
		  'frmMain.myConNotifications.Visible = true
		  'frmMain.myConOverView.Visible = true
		  'frmMain.timeDayChange.Mode = 2
		  'frmMain.myConNotifications.ShowAllMessages
		  
		Exception
		  MsgBox "There was an error updating from the server.  Please quit and log back in."
		  'MsgBox "There was an error reading in the Save Game file."
		  'BuildInitialDistroList
		  'BuildInitialPackageList
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewDayNewBugs()
		  dim i as integer
		  dim r as Random
		  r = new random
		  r.Seed = TheDate.TotalSeconds
		  
		  for i = 0 to PackagesAvailable.Ubound
		    if r.InRange(0,150) = 1 then  // New bug found!
		      PackagesAvailable(i).Bugs = PackagesAvailable(i).Bugs + 1
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewDayNewProductivity()
		  dim i as integer
		  dim r as Random
		  
		  r = new random
		  r.Seed = TheDate.TotalSeconds
		  
		  // Loop through all packages, find the ones with workers
		  for i = 0 to PackagesAvailable.Ubound
		    
		    if GetWorkersVolunteersForPackage(i) > 0 then
		      if r.InRange(0, 100 / GetWorkersVolunteersForPackage(i)) = 1 then
		        PackagesAvailable(i).RemoveABug
		      end if
		    end if
		    
		    if GetWorkersPaidForPackage(i) > 0 then
		      if r.InRange(0, 50 / GetWorkersPaidForPackage(i)) = 1 then
		        PackagesAvailable(i).RemoveABug
		      end if
		    end if
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewDayNewUsers()
		  dim allLinuxUsers as integer
		  dim ForMe as integer
		  dim forEach as integer
		  
		  dim forNerdCred as integer
		  dim forBugCount as integer
		  dim forPopularity as integer
		  dim forSize as integer
		  dim forHype as integer
		  
		  
		  dim i as integer
		  
		  // Set Available User Levels
		  forNerdCred = NewLinuxUsersDaily / 5
		  forPopularity = NewLinuxUsersDaily / 5
		  forSize = NewLinuxUsersDaily / 5
		  forHype = NewLinuxUsersDaily / 5
		  forBugCount = NewLinuxUsersDaily / 5
		  
		  // Process Hype
		  MyDistro.ProcessHype
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).ProcessHype
		  next
		  
		  // Reset new user change
		  MyDistro.newUserChange = 0
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).newUserChange = 0
		  next
		  
		  // Process Nerd Cred User Change
		  MyDistro.newUserChange = MyDistro.newUserChange + (forNerdCred * (MyDistro.GetDistroNerdCredPercentage * 10))
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).newUserChange = OtherDistros(i).newUserChange + (forNerdCred * (OtherDistros(i).GetDistroNerdCredPercentage * 10))
		  next
		  
		  // Process Package Popularity User Change
		  MyDistro.newUserChange = MyDistro.newUserChange + (forPopularity * (MyDistro.GetDistroPackagePopularityPercentage * 10))
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).newUserChange = OtherDistros(i).newUserChange + (forPopularity * (OtherDistros(i).GetDistroPackagePopularityPercentage * 10))
		  next
		  
		  // Process Size User Change
		  MyDistro.newUserChange = MyDistro.newUserChange - ((forSize * MyDistro.GetDistroSizeInMBPercentage) * 3)
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).newUserChange = OtherDistros(i).newUserChange - ((forSize * OtherDistros(i).GetDistroSizeInMBPercentage) * 3)
		  next
		  
		  // Bigger than a CD penalty
		  if MyDistro.GetDistroSizeInMB > 700 then
		    MyDistro.newUserChange = MyDistro.newUserChange - (mydistro.Users / 100)
		  end if
		  
		  // Process Bug Count User Change
		  MyDistro.newUserChange = MyDistro.newUserChange - (forBugCount * MyDistro.GetDistroBugPercentage)
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).newUserChange = OtherDistros(i).newUserChange - (forBugCount * OtherDistros(i).GetDistroBugPercentage)
		  next
		  
		  // Process Hype User Change
		  MyDistro.newUserChange = MyDistro.newUserChange + (MyDistro.Hype * 2)
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).newUserChange = OtherDistros(i).newUserChange + (OtherDistros(i).Hype * 2)
		  next
		  
		  // Process Random Element
		  dim r as Random
		  r = new Random
		  r.Seed = TheDate.TotalSeconds
		  
		  MyDistro.newUserChange = MyDistro.newUserChange + Round(r.InRange(-10,15))
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).newUserChange = OtherDistros(i).newUserChange + Round(r.InRange(-15,10))
		  next
		  
		  // Keep new user change within a range
		  if MyDistro.newUserChange > 275 then
		    MyDistro.newUserChange = 275
		  ElseIf MyDistro.newUserChange < -225 then
		    MyDistro.newUserChange = -225
		  end if
		  for i = 0 to OtherDistros.Ubound
		    if OtherDistros(i).newUserChange > 255 then
		      OtherDistros(i).newUserChange = 255
		    ElseIf OtherDistros(i).newUserChange < -255 then
		      OtherDistros(i).newUserChange = -255
		    end if
		  next
		  
		  // Apply new user change
		  MyDistro.Users = MyDistro.Users + MyDistro.newUserChange
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).Users = OtherDistros(i).Users + OtherDistros(i).newUserChange
		  next
		  
		  // Keep it all above zero
		  for i = 0 to OtherDistros.Ubound
		    if OtherDistros(i).Users < 0 then
		      OtherDistros(i).Users = 0
		    end if
		  next
		  if MyDistro.Users < 0 then
		    MyDistro.Users = 0
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewDayNewUsersOld()
		  dim allLinuxUsers as integer
		  dim ForMe as integer
		  dim forEach as integer
		  
		  'allLinuxUsers = TotalLinuxUsers
		  
		  // Process Hype
		  if MyDistro.Hype > 0 then
		    ForMe = MyDistro.Hype
		    MyDistro.Hype = MyDistro.Hype - 1
		  end if
		  
		  if MyDistro.Hype < 0 then
		    ForMe = MyDistro.Hype
		    MyDistro.Hype = MyDistro.Hype + 1
		  end if
		  
		  // Process new users for all
		  forEach = round(NewLinuxUsersDaily / (OtherDistros.Ubound + 1))
		  ForMe = ForMe + forEach
		  
		  dim i as integer
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).Users = OtherDistros(i).Users + forEach
		  next
		  
		  // Process Random Element
		  dim r as Random
		  r = new Random
		  r.Seed = TheDate.TotalSeconds
		  
		  for i = 0 to OtherDistros.Ubound
		    OtherDistros(i).Users = OtherDistros(i).Users + Round(r.InRange(- (OtherDistros(i).Users / 100), OtherDistros(i).Users / 100))
		  next
		  
		  // Apply Bugs
		  if MyDistro.ReleasedBugs > 0 then
		    ForMe = round(ForMe / MyDistro.ReleasedBugs)
		  end if
		  
		  // Apply Nerd Cred and Popularity
		  ForMe = ForMe + Round(((MyDistro.GetDistroNerdCred + MyDistro.GetDistroPackagePopularity) / 20))
		  
		  forme = forme + round(r.InRange(-5, 5))
		  
		  MyDistro.Users = MyDistro.Users + forme + round(r.InRange(- (MyDistro.Users / 100), MyDistro.Users / 100))
		  
		  if MyDistro.Users < 0 then
		    MyDistro.Users = 0
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewDayNewWorkers()
		  dim r as Random
		  r = new Random
		  r.Seed = TheDate.TotalSeconds
		  
		  dim newVolunteers as integer
		  dim newPaid as integer
		  dim newWorker as boolean
		  
		  newWorker = false
		  
		  if MyDistro.WorkersPaid < round(MyDistro.Users / 1000) then
		    if r.InRange(0,150) = 1 then
		      MyDistro.WorkersPaid = MyDistro.WorkersPaid + 1
		      
		      if isFirstWorkerPaid = true then
		        isFirstWorkerPaid = false
		        ShowMessage "You've been growing so much, you can now afford your first paid worker!  A paid worker can get twice as much done in a day than a volunteer!"
		      end if
		      
		    end if
		  end if
		  
		  if MyDistro.WorkersVolunteers < round(MyDistro.Users / 20) then
		    if r.InRange(0,50) = 1 then
		      MyDistro.WorkersVolunteers = MyDistro.WorkersVolunteers + 1
		      
		      if isFirstWorkerVolunteer = true then
		        isFirstWorkerVolunteer = false
		        ShowMessage "You just got your first volunteer!  You can assign workers to fix bugs on any package you like by using the 'Assign Workers' button."
		      end if
		      
		    end if
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pause()
		  frmMain.timeDayChange.Mode = 0
		  frmMain.btnPause.Visible = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RandomEvent()
		  Dim r as New Random
		  dim theEvent as integer
		  
		  r.Seed = TheDate.TotalSeconds
		  theEvent = r.InRange(0,300)
		  
		  // Process Random distro
		  dim r2 as Random
		  r2 = new Random
		  r2.Seed = TheDate.TotalSeconds
		  dim theDist as integer
		  theDist = Round(r.InRange(-1,OtherDistros.Ubound))
		  
		  // Increase likelihood that mydistro is impacted
		  dim rForMyDistro as Random
		  rForMyDistro = new random
		  rForMyDistro.Seed = TheDate.TotalSeconds
		  if rForMyDistro.InRange(1,5) = 2 then
		    theDist = -1
		  end if
		  
		  // Process Random package
		  dim r3 as Random
		  r3 = new Random
		  r3.Seed = TheDate.TotalSeconds
		  dim thePack as integer
		  thePack = Round(r.InRange(0,PackagesAvailable.Ubound))
		  
		  if MyDistro.ReleasedVer > 0 then
		    
		    select case theEvent
		      
		    case 1 // Reviewed well on LAS
		      if GetDistro(theDist).ReleasedVer > 0 then
		        GetDistro(theDist).Hype =GetDistro(theDist).Hype + 20
		        ShowMessage GetDistro(theDist).Name + " version " + str(GetDistro(theDist).ReleasedVer) + ".0 was reviewed on the Linux Action Show... " + _
		        " and it got a big thumbs up!  This should give it a big boost!"
		      end if
		      
		    case 2 // Reviewed poorly on LAS
		      if GetDistro(theDist).ReleasedVer > 0 then
		        GetDistro(theDist).Hype = MyDistro.Hype - 20
		        ShowMessage GetDistro(theDist).Name + " version " + str(GetDistro(theDist).ReleasedVer) + ".0 was reviewed on the Linux Action Show... " + _
		        " and... they compared it to stinky cheese.  Not ideal..."
		      end if
		      
		    case 3 // Reviewed well in a Linux Magazine
		      if GetDistro(theDist).ReleasedVer > 0 then
		        if GetDistro(theDist).GetDistroAgeInDays > 30 then
		          GetDistro(theDist).Hype = GetDistro(theDist).Hype + 15
		          ShowMessage GetDistro(theDist).Name + " version " + str(GetDistro(theDist).ReleasedVer) + ".0 was reviewed in a popular Linux Magazine... " + _
		          " and they liked it!  Way to go!  Time to get that article framed!"
		        end if
		      end if
		      
		    case 4 // MS Screws up
		      NewLinuxUsersDaily = NewLinuxUsersDaily + 20
		      ShowMessage "A new version of Windews is released.  Nobody likes it.  More new users are switching to Linux!  All Linux Distro's rejoice!"
		      
		    case 5 // MS does good
		      NewLinuxUsersDaily = NewLinuxUsersDaily - 20
		      ShowMessage "A new version of Windews is released.  And... and... this one is pretty good.  People aren't switching to Linux quite so much..."
		      
		    case 6 // negative in the freedom dimension
		      if GetDistro(theDist).HasNonOpenSourcePackages = true then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype - 20
		        ShowMessage GetDistro(theDist).Name + "'s usage of non-Open Source software has caused some guy to declare it 'Negative in the freedom dimension'.  You have no idea what that means."
		      end if
		      
		    case 7 // nerd cred
		      if GetDistro(theDist).GetDistroNerdCred > 40 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype + 20
		        ShowMessage GetDistro(theDist).Name + "'s high Nerd Cred has resulted in some great word of mouth publicity among the Nerd Elite."
		      end if
		      
		    case 8 // Package Popularity
		      if GetDistro(theDist).GetDistroPackagePopularity > 40 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype + 20
		        ShowMessage GetDistro(theDist).Name + "'s use of some of the most popular software has made it easy for people to switch to " + GetDistro(theDist).Name + ", resulting in a surge in users."
		      end if
		      
		    case 9 // Small in size
		      if GetDistro(theDist).GetDistroSizeInMB < 40 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype + 20
		        ShowMessage GetDistro(theDist).Name + "'s super small, lightweight Distro has earned a reputation as being great for older hardware."
		      end if
		      
		    case 10 // extra big
		      if GetDistro(theDist).GetDistroSizeInMB > 800 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype - 20
		        ShowMessage GetDistro(theDist).Name + "'s users are annoyed at the fact that it will not fit on a single CD."
		      end if
		      
		    case 11 // No Desktop Environment
		      if GetDistro(theDist).GetPackageCountDesktopEnvironment = 0 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype - 20
		        ShowMessage "Woops.  " + GetDistro(theDist).Name + " has no Desktop Environment.  Some people find those useful."
		      end if
		      
		    case 12 // No Games
		      if GetDistro(theDist).GetPackageCountGame = 0 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype - 20
		        ShowMessage "The lack of any games in " + GetDistro(theDist).Name + " has earned it the reputation of 'The Most Boringest Linux Distro Ever'."
		      end if
		      
		    case 13 // No office suite
		      if GetDistro(theDist).GetPackageCountOfficeSuite = 0 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype - 20
		        ShowMessage "People on the internet are making fun of "+ GetDistro(theDist).Name + " for not having an Office Suite."
		      end if
		      
		    case 14 // Lots of games
		      if GetDistro(theDist).GetPackageCountGame > 4 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype + 20
		        ShowMessage GetDistro(theDist).Name + " is earning a reputation as 'Super Duper Fun' due to its wide selection of games."
		      end if
		      
		    case 15 // Lots of programming
		      if GetDistro(theDist).GetPackageCountProgramming > 3 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype + 20
		        ShowMessage "Programmers are raving about " + GetDistro(theDist).Name + ", calling it 'A Coders Paradise'."
		      end if
		      
		    case 16 // Lots of graphics editing
		      if GetDistro(theDist).GetPackageCountGraphicsEditing > 3 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype + 20
		        ShowMessage "Graphic designers and artists are switching to " + GetDistro(theDist).Name + " in droves."
		      end if
		      
		    case 17 // Long in the tooth
		      if MyDistro.GetDistroAgeInDays > 182 then
		        MyDistro.Hype = MyDistro.Hype - 25
		        ShowMessage "It's been quite a long time since you've had a new release... your users are beginning to look elsewhere..."
		      end if
		      
		    case 18 // No Browser
		      if GetDistro(theDist).GetPackageCountWebBrowser = 0 then
		        GetDistro(theDist).Hype = GetDistro(theDist).Hype - 20
		        ShowMessage GetDistro(theDist).Name + " has no web browser.  Seriously.  It's like living in the dark ages."
		      end if
		      
		    case 19 // New Software Version
		      PackagesAvailable(thePack).Version = PackagesAvailable(thePack).Version + 1
		      PackagesAvailable(thePack).Popularity = PackagesAvailable(thePack).Popularity + 1
		      ShowMessage PackagesAvailable(thePack).Name + " has been updated to version " + _
		      str(PackagesAvailable(thePack).Version) + ".0.  Popularity increased!"
		      
		    case 20
		      PackagesAvailable(thePack).Version = PackagesAvailable(thePack).Version + 1
		      PackagesAvailable(thePack).NerdCred = PackagesAvailable(thePack).NerdCred + 1
		      ShowMessage PackagesAvailable(thePack).Name + " has been updated to version " + _
		      str(PackagesAvailable(thePack).Version) + ".0.  Nerd cred increased!"
		      
		    case 21
		      PackagesAvailable(thePack).Version = PackagesAvailable(thePack).Version + 1
		      PackagesAvailable(thePack).Bugs = PackagesAvailable(thePack).Bugs + 6
		      ShowMessage PackagesAvailable(thePack).Name + " has been updated to version " + _
		      str(PackagesAvailable(thePack).Version) + ".0.  Unfortunately it is super buggy."
		      
		    case 22
		      PackagesAvailable(thePack).Version = PackagesAvailable(thePack).Version + 1
		      PackagesAvailable(thePack).Bugs = 0
		      ShowMessage PackagesAvailable(thePack).Name + " has been updated to version " + _
		      str(PackagesAvailable(thePack).Version) + ".0.  The developers managed to fix all known bugs!"
		      
		    case 23 // Goats!
		      if GetDistro(theDist).ReleasedVer > 0 then
		        GetDistro(theDist).Hype =GetDistro(theDist).Hype - 15
		        ShowMessage "Bryan's goats have wandered into your yard and chewed through your ethernet cables.  Your website goes down for a day."
		      end if
		      
		      
		    end select
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveGame(f as FolderItem)
		  Dim fileStream as TextOutputStream
		  dim s as string
		  dim i as integer
		  
		  If f <> Nil then
		    fileStream=TextOutputStream.Create(f)
		    
		    s = GenerateSaveXML
		    
		    fileStream.Write s
		    
		    fileStream.Close
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowMessage(theMsg as string)
		  
		  // The old Way (but works)
		  'pause
		  '
		  'frmMain.myConDistoStats.Visible = False
		  'frmMain.myConDistroRank.Visible = False
		  'frmMain.myConOverView.Visible = false
		  '
		  'frmMain.myConMessage.lblMessage.Text = theMsg
		  'frmMain.myConMessage.Visible = true
		  // End the old way
		  
		  
		  frmMain.myConNotifications.AddNewMessage(theMsg)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TotalLinuxUsers() As integer
		  dim i as integer
		  dim total as integer
		  
		  for i = 0 to OtherDistros.Ubound
		    total = total + OtherDistros(i).Users
		  next
		  
		  total = total + MyDistro.Users
		  
		  Return total
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnPause()
		  frmMain.timeDayChange.Mode = 2
		  frmMain.btnPause.Visible = true
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CustomLogo As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomWallpaper As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		GameMode As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		isFirstRun As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		isFirstWorkerPaid As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		isFirstWorkerVolunteer As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		isPaused As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		MMONewUser As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		myClientSocket As theClientSocket
	#tag EndProperty

	#tag Property, Flags = &h0
		MyDistro As Distro
	#tag EndProperty

	#tag Property, Flags = &h0
		myServer As theServer
	#tag EndProperty

	#tag Property, Flags = &h0
		NewLinuxUsersDaily As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OtherDistros() As Distro
	#tag EndProperty

	#tag Property, Flags = &h0
		PackagesAvailable() As Package
	#tag EndProperty

	#tag Property, Flags = &h0
		PrefBackgroundColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		PrefBorderColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		TheDate As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		TheNextUpdate As date
	#tag EndProperty

	#tag Property, Flags = &h0
		UnRegisteredLimitShown As boolean = false
	#tag EndProperty


	#tag Constant, Name = kModeLocal, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KModeOnline, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kModeServer, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeCommunication, Type = Double, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeDesktopEnvironment, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeGame, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeGraphicsEditing, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeMultimedia, Type = Double, Dynamic = False, Default = \"9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeOfficeSuite, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeProgramming, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeUtility, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeWebBrowser, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="CustomLogo"
			Group="Behavior"
			Type="picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomWallpaper"
			Group="Behavior"
			Type="picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GameMode"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isFirstRun"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isFirstWorkerPaid"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isFirstWorkerVolunteer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isPaused"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MMONewUser"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NewLinuxUsersDaily"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrefBackgroundColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrefBorderColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UnRegisteredLimitShown"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
