#tag Window
Begin ContainerControl conIntro
   AcceptFocus     =   ""
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   16777215
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   False
   Height          =   279
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   32
   LockBottom      =   ""
   LockLeft        =   ""
   LockRight       =   ""
   LockTop         =   ""
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   32
   UseFocusRing    =   ""
   Visible         =   True
   Width           =   390
   Begin Canvas Canvas1
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   1323801597
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   99
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   14
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   17
      UseFocusRing    =   True
      Visible         =   True
      Width           =   46
   End
   Begin PagePanel pageIntro
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   233
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   71
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      PanelCount      =   3
      Panels          =   ""
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   15
      Value           =   2
      Visible         =   True
      Width           =   314
      Begin TextField txtName
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   16777215
         Bold            =   ""
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pageIntro"
         Italic          =   ""
         Left            =   76
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "MyLinuxDistro"
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   222
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   150
      End
      Begin Label Label2
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   203
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pageIntro"
         Italic          =   ""
         Left            =   71
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Now that you've got a name, it's time to figure out which packages you'll want to include in your Linux Distro.\r\rA ""package"" is an app (or a collection of apps) that will be available in your Distro.  This can include everything from your basic desktop environment to your web browser (and beyond).\r\rSo pick carefully.  Click ""Edit Packages"" to get started.  (Okay, you don't have to be *that* careful, you can change your packages later.)"
         TextAlign       =   0
         TextColor       =   16515070
         TextFont        =   "System"
         TextSize        =   12
         TextUnit        =   0
         Top             =   15
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   309
      End
      Begin Label Label3
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   203
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pageIntro"
         Italic          =   ""
         Left            =   71
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "On the left you'll find a summary of the version of your Linux Distro that is currently ""in development"".\r\rOnce you are satisfied with this version you can click ""Release Version"" to make this version public (and people will then be able to use it).\r\rAs soon as you release your first version, time will start moving."
         TextAlign       =   0
         TextColor       =   16515070
         TextFont        =   "System"
         TextSize        =   12
         TextUnit        =   0
         Top             =   15
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   309
      End
      Begin canBtn btnSetName
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
         InitialParent   =   "pageIntro"
         isMouseOver     =   ""
         Left            =   238
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         myEnabled       =   ""
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   222
         UseFocusRing    =   True
         Visible         =   True
         Width           =   120
      End
      Begin canBtn btnDone
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
         InitialParent   =   "pageIntro"
         isMouseOver     =   ""
         Left            =   238
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         myEnabled       =   ""
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   222
         UseFocusRing    =   True
         Visible         =   True
         Width           =   120
      End
      Begin canBtn btnDone1
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
         InitialParent   =   "pageIntro"
         isMouseOver     =   ""
         Left            =   238
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         myEnabled       =   ""
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Top             =   222
         UseFocusRing    =   True
         Visible         =   True
         Width           =   120
      End
      Begin canLabel canLabel1
         AcceptFocus     =   ""
         AcceptTabs      =   ""
         AutoDeactivate  =   True
         Backdrop        =   ""
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   200
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pageIntro"
         isMouseOver     =   ""
         Left            =   71
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         myEnabled       =   true
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextSize        =   0
         Top             =   17
         UseFocusRing    =   True
         Visible         =   True
         Width           =   307
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  OriginX = x
		  OriginY = y
		  'Return true
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  self.left = self.left + (x - OriginX)
		  self.top = self.top + (y - OriginY)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  PrefBackgroundColor = rgb(255,255,255)
		  PrefBorderColor = rgb(0,0,128)
		  ReDrawBG
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  'g.DrawPicture mybg,0,0
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ReDrawBG()
		  // Draw BG
		  myBG = new Picture(me.Width, me.Height, 32)
		  
		  dim repX as integer
		  dim repY as integer
		  dim iX as integer
		  dim iY as integer
		  
		  // Draw Background Color
		  repX =  me.Width / Background.Width
		  repY = me.Height / Background.Height
		  
		  for iX = 0 to repX
		    for iY = 0 to repY
		      
		      myBG.Graphics.DrawPicture Background,ix * Background.Width, iy * Background.Height
		      
		    next
		  next
		  
		  // Top Border
		  repX =  me.Width / TopRepeat.Width
		  
		  for iX = 0 to repX
		    
		    myBG.Graphics.DrawPicture TopRepeat,ix * TopRepeat.Width,0
		    
		  next
		  
		  // Bottom Border
		  repX =  me.Width / BottomRepeat.Width
		  
		  for iX = 0 to repX
		    
		    myBG.Graphics.DrawPicture BottomRepeat,ix * BottomRepeat.Width, me.Height - BottomRepeat.Height
		    
		  next
		  
		  // Left Border
		  repY = me.Height / LeftRepeat.Height
		  
		  for iY = 0 to repY
		    
		    myBG.Graphics.DrawPicture LeftRepeat,0, iy * LeftRepeat.Height
		    
		  next
		  
		  // Right Border
		  repY = me.Height / RightRepeat.Height
		  
		  for iY = 0 to repY
		    
		    myBG.Graphics.DrawPicture RightRepeat, myBG.Width - RightRepeat.Width, iy * RightRepeat.Height
		    
		  next
		  
		  // Bottom Border
		  repX =  me.Width / BottomRepeat.Width
		  
		  for iX = 0 to repX
		    
		    myBG.Graphics.DrawPicture BottomRepeat,ix * BottomRepeat.Width, me.Height - BottomRepeat.Height
		    
		  next
		  
		  // Corners
		  
		  myBG.Graphics.DrawPicture TopLeft, 0, 0
		  myBG.Graphics.DrawPicture TopRight, myBG.Width - TopRight.Width, 0
		  myBG.Graphics.DrawPicture BottomLeft, 0, myBG.Height - BottomLeft.Height
		  myBG.Graphics.DrawPicture BottomRight, mybg.Width - BottomRight.Width, mybg.Height - BottomRight.Height
		  
		  
		  me.Backdrop = myBG
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		myBG As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		OriginX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OriginY As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events btnSetName
	#tag Event
		Sub Open()
		  me.Text = "Set Distro Name"
		  me.DrawNormal
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  MyDistro.Name = txtName.Text
		  'frmMain.myConDistoStats.Visible = true
		  'frmMain.myConIntro.Left = 200
		  pageIntro.Value = 1
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDone
	#tag Event
		Sub Open()
		  me.Text = "Edit Packages"
		  me.DrawNormal
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  me.Window.Visible = false
		  'frmMain.timeDayChange.Mode = 2
		  CenterContainer(frmMain.myConPackageSelection)
		  frmMain.myConPackageSelection.Visible = true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDone1
	#tag Event
		Sub Open()
		  me.Text = "Get Started"
		  me.DrawNormal
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  frmMain.myConDistoStats.btnPackages.Enabled = true
		  frmMain.myConDistoStats.btnRelease.Enabled = true
		  'frmMain.myConDistoStats.btnWorkers.Enabled = true
		  'frmMain.timeDayChange.Mode = 2
		  frmMain.myConIntro.Visible = false
		  isFirstRun = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events canLabel1
	#tag Event
		Sub Open()
		  me.TextAlign = "Left"
		  me.isMultiLine = true
		  me.TextSize = 12
		  me.Text = "Want to build the greatest Linux Distribution (aka ""Distro"") in the history of mankind?" + EndOfLine + EndOfLine + _
		  "Good.  Because this is Linux Tycoon, not ""Cute Fuzzy Puppy Tycoon.""" + EndOfLine + EndOfLine + _
		  "My name is Bryan.  I will be your guide to the cut-throat world of Linux Distro building." + EndOfLine + EndOfLine + _
		  "To get started, you should probably name your Linux Distro.  Think hard.  You'll be stuck with this name for a long, long time."
		  
		End Sub
	#tag EndEvent
#tag EndEvents
