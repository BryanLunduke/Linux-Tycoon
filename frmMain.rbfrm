#tag Window
Begin Window frmMain
   BackColor       =   11847396
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   410
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   267652706
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Linux Tycoon"
   Visible         =   True
   Width           =   620
   Begin Label lblDate1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   515
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   2
      TextColor       =   16580602
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   1
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   100
   End
   Begin canvas canMain
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   390
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   22
      UseFocusRing    =   True
      Visible         =   True
      Width           =   620
   End
   Begin Timer timeRedraw
      Height          =   32
      Index           =   -2147483648
      Left            =   -55
      LockedInPosition=   False
      Mode            =   2
      Period          =   30
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   22
      Width           =   32
   End
   Begin Label lblDate
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   358
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   228
   End
   Begin Timer timeDayChange
      Height          =   32
      Index           =   -2147483648
      Left            =   -55
      LockedInPosition=   False
      Mode            =   0
      Period          =   1000
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   74
      Width           =   32
   End
   Begin canBtn btnPause
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      isMouseOver     =   ""
      Left            =   598
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   ""
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      UseFocusRing    =   True
      Visible         =   True
      Width           =   22
   End
   Begin Timer timeMMO
      Height          =   32
      Index           =   -2147483648
      Left            =   -55
      LockedInPosition=   False
      Mode            =   0
      Period          =   5000
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   157
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  'base.append(New MenuItem("Set Wallpaper"))
		  'base.append(New MenuItem("Set Distro Logo"))
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim f as FolderItem
		  
		  select case hitItem.Text
		    
		  case "Set Wallpaper"
		    'Opens the picture using the Open shared method
		    f = GetOpenFolderItem(filetypes1.Jpeg + FileTypes1.Png)
		    
		    if f <> nil then
		      CustomWallpaper=Picture.Open(f)
		      if CustomWallpaper <> nil then
		        frmMain.Backdrop = CustomWallpaper
		      end if
		    end if
		    
		  case"Set Distro Logo"
		    'Opens the picture using the Open shared method
		    f = GetOpenFolderItem(filetypes1.Jpeg + FileTypes1.Png)
		    
		    if f <> nil then
		      CustomLogo=Picture.Open(f)
		      if CustomLogo <> nil then
		        frmMain.myConDistoStats.canLogo.Backdrop = CustomLogo
		      end if
		    end if
		    
		  end Select
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  me.Title = app.LongVersion
		  
		  PrefBackgroundColor = rgb(255,255,255)
		  PrefBorderColor = rgb(0,0,128)
		  
		  TheDate = new date
		  
		  BuildInitialPackageList
		  BuildInitialDistroList
		  'GeneralStuff.LoadScenario(StandardScenario)
		  
		  // Set the game mode
		  GameMode = kModeLocal
		  'GameMode = kModeServer
		  
		  myClientSocket = new theClientSocket
		  if GameMode = kModeServer then
		    myServer = new theServer
		    myServer.Port = 6175
		    myServer.Listen
		  end if
		  
		  isFirstRun = true
		  isFirstWorkerPaid = true
		  isFirstWorkerVolunteer = true
		  
		  NewLinuxUsersDaily = 50
		  
		  MyDistro = new Distro
		  MyDistro.Version = 1
		  MyDistro.ReleasedVer = 0
		  
		  MyDistro.Logo = new Picture(32,32,32)
		  MyDistro.Logo.Graphics.DrawPicture(Tux32x32,0,0)
		  MyDistro.Logo.Mask.Graphics.DrawPicture(Tux32x32.Mask,0,0)
		  
		  if DebugBuild = true then
		    
		    'MyDistro = new Distro
		    'MyDistro.Bugs = 0
		    'MyDistro.Hype = 0
		    'MyDistro.Name = "MyDistro"
		    'MyDistro.Users = 1
		    'MyDistro.WorkersPaid = 10
		    'MyDistro.WorkersVolunteers = 10
		    'MyDistro.Version = 1
		    'MyDistro.ReleasedVer = 0
		    'MyDistro.ReleasedDate = new date
		    
		  end if
		  
		  myConMessage = new conMessage
		  myConMessage.EmbedWithin frmMain.canMain, 5,5
		  CenterContainer(myConMessage)
		  myConMessage.Visible = false
		  
		  myConWorkerAssignment = new conWorkerAssignment
		  myConWorkerAssignment.EmbedWithin frmMain.canMain, 5,5
		  CenterContainer(myConWorkerAssignment)
		  myConWorkerAssignment.Visible = false
		  
		  myConOverView = new conOverView
		  myConOverView.EmbedWithin frmMain.canMain, 5,5
		  LeftAlignContainer(myConOverView)
		  myConOverView.Visible = false
		  
		  myConDistroRank = new conDistroRank
		  myConDistroRank.EmbedWithin frmMain.canMain, 400,68
		  LeftAlignContainer(myConDistroRank)
		  myConDistroRank.Visible = false
		  
		  myConPackageSelection = new conPackageSelection
		  myConPackageSelection.EmbedWithin frmMain.canMain, 50,50
		  CenterContainer(myConPackageSelection)
		  myConPackageSelection.Visible = false
		  
		  myConDistoStats = new conDistroStats
		  myConDistoStats.EmbedWithin frmMain.canMain, 5,5
		  myConDistoStats.Visible = false
		  
		  myConNewRelease = new conNewRelease
		  myConNewRelease.EmbedWithin frmMain.canMain, 10,50
		  CenterContainer(myConNewRelease)
		  myConNewRelease.Visible = false
		  
		  myConIntro = new conIntro
		  myConIntro.EmbedWithin frmMain.canMain, 50,10
		  CenterContainer(myConIntro)
		  myConIntro.Visible = false
		  
		  'myConServerList = new conServerList
		  'myConServerList.EmbedWithin frmMain.canMain, 50,10
		  'CenterContainer(myConServerList)
		  'myConServerList.Visible = false
		  
		  myConLogin = new conLogin
		  myConLogin.EmbedWithin frmMain.canMain, 50,10
		  CenterContainer(myConLogin)
		  myConLogin.Visible = false
		  
		  myConNewUser = new conNewUser
		  myConNewUser.EmbedWithin frmMain.canMain, 50,10
		  CenterContainer(myConNewUser)
		  myConNewUser.Visible = false
		  
		  'myConServer = new conServer
		  'myConServer.EmbedWithin frmMain.canMain, 50,10
		  'CenterContainer(myConServer)
		  'myConServer.Visible = false
		  
		  myConSacrificeWorker = new conSacrificeWorker
		  myConSacrificeWorker.EmbedWithin frmMain.canMain, 50,10
		  CenterContainer(myConSacrificeWorker)
		  myConSacrificeWorker.Visible = false
		  
		  myConNotifications = new conNotifications
		  myConNotifications.EmbedWithin frmMain.canMain, myConOverView.Left, 68
		  'CenterContainer(myConIntro)
		  myConNotifications.Visible = false
		  
		  myConMainMenu = new conMainMenu
		  myConMainMenu.EmbedWithin frmMain.canMain, 50,10
		  CenterContainer(myConMainMenu)
		  'myConMainMenu.Visible = false
		  
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		myConDistoStats As conDistroStats
	#tag EndProperty

	#tag Property, Flags = &h0
		myConDistroRank As conDistroRank
	#tag EndProperty

	#tag Property, Flags = &h0
		myConIntro As conIntro
	#tag EndProperty

	#tag Property, Flags = &h0
		myConLogin As conLogin
	#tag EndProperty

	#tag Property, Flags = &h0
		myConMainMenu As conMainMenu
	#tag EndProperty

	#tag Property, Flags = &h0
		myConMessage As conMessage
	#tag EndProperty

	#tag Property, Flags = &h0
		myConNewRelease As conNewRelease
	#tag EndProperty

	#tag Property, Flags = &h0
		myConNewUser As conNewUser
	#tag EndProperty

	#tag Property, Flags = &h0
		myConNotifications As conNotifications
	#tag EndProperty

	#tag Property, Flags = &h0
		myConOverView As conOverView
	#tag EndProperty

	#tag Property, Flags = &h0
		myConPackageSelection As conPackageSelection
	#tag EndProperty

	#tag Property, Flags = &h0
		myConSacrificeWorker As conSacrificeWorker
	#tag EndProperty

	#tag Property, Flags = &h0
		myConWorkerAssignment As conWorkerAssignment
	#tag EndProperty


#tag EndWindowCode

#tag Events canMain
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  'dim x as integer
		  'dim y as integer
		  '
		  'x = (g.Width / 2) - 16
		  'y = (g.Height / 2) - 16
		  '
		  'g.DrawPicture MyDistro.Logo,x, y
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timeDayChange
	#tag Event
		Sub Action()
		  if isPaused = false then
		    
		    if GameMode = kModeLocal then
		      IncrementByADay
		    end if
		    
		    myConOverView.UpdateStats
		    myConDistroRank.UpdateDistroRank
		    'myConDistoStats.UpdateStats
		    
		    'GeneralStuff.ShowMessage("This is a test message to test scrolling and such.  Congratulations on seeing this message.")
		    
		    if GameMode = KModeOnline then
		      btnPause.Enabled = False
		      btnPause.Visible = false
		      myConDistoStats.btnSaveQuit.Text = "Quit"
		    end if
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnPause
	#tag Event
		Sub Open()
		  me.Text = "||"
		  me.DrawNormal
		  me.Visible = false
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  if me.Text = "||" then
		    isPaused = true
		    me.Text = ">"
		  ElseIf me.Text = ">" then
		    isPaused = false
		    me.Text = "||"
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timeMMO
	#tag Event
		Sub Action()
		  myClientSocket.FetchTimeUpdate
		  myClientSocket.FetchFullUpdateWithoutMyDistro
		  myClientSocket.SendMyDistroUpdateToServer
		  
		  'MsgBox "Fetched!"
		  '
		  'if myClientSocket.isBusy = false then
		  'myClientSocket.FetchFullUpdateWithoutMyDistro
		  'else
		  '
		  'end if
		End Sub
	#tag EndEvent
#tag EndEvents
