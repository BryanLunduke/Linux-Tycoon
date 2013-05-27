#tag Window
Begin ContainerControl conSacrificeWorker
   AcceptFocus     =   ""
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   16777215
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   211
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
   Width           =   332
   Begin canBtn btnOK
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
      Left            =   85
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   ""
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   169
      UseFocusRing    =   True
      Visible         =   True
      Width           =   162
   End
   Begin Label Label2
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
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Available Volunteers :"
      TextAlign       =   0
      TextColor       =   16777215
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   71
      Transparent     =   True
      Underline       =   ""
      Visible         =   True
      Width           =   168
   End
   Begin Label lblAvailVol
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
      Left            =   189
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   0
      TextAlign       =   2
      TextColor       =   16777215
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   71
      Transparent     =   True
      Underline       =   ""
      Visible         =   True
      Width           =   67
   End
   Begin canBtn btnBoost
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
      Left            =   106
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   ""
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   103
      UseFocusRing    =   True
      Visible         =   True
      Width           =   120
   End
   Begin Label Label3
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   45
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "You may sacrifice volunteers for immediate, but highly mysterious, boosts."
      TextAlign       =   0
      TextColor       =   16777215
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   14
      Transparent     =   True
      Underline       =   ""
      Visible         =   True
      Width           =   292
   End
   Begin Label lblResults
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
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   16777215
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   137
      Transparent     =   True
      Underline       =   ""
      Visible         =   True
      Width           =   292
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  UpdateWorkers
		  
		  
		End Sub
	#tag EndEvent

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

	#tag Method, Flags = &h0
		Sub SortDistroRank()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateWorkers()
		  
		  if MyDistro <> nil then
		    
		    'lblAvailPaid.Text = str(MyDistro.GetDistroWorkerAvailablePaid) + " / " + str(MyDistro.WorkersPaid)
		    lblAvailVol.Text = str(MyDistro.GetDistroWorkerAvailableVolunteer) + " / " + str(MyDistro.WorkersVolunteers)
		    
		  end if
		  
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

#tag Events btnOK
	#tag Event
		Sub Open()
		  me.Text = "No more!"
		  me.DrawNormal
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  
		  frmMain.myConSacrificeWorker.Visible = false
		  frmMain.myConWorkerAssignment.Visible = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBoost
	#tag Event
		Sub Open()
		  me.Text = "Sacrifice Worker"
		  me.DrawNormal
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  dim r as Random
		  r = new Random
		  dim hypeChange as integer
		  dim userChange as integer
		  
		  if MyDistro.GetDistroWorkerAvailableVolunteer > 0 then
		    
		    MyDistro.WorkersVolunteers = MyDistro.WorkersVolunteers - 1
		    
		    r.Seed = Ticks
		    hypeChange = r.InRange(-5, 15)
		    MyDistro.Hype = MyDistro.Hype + hypeChange
		    
		    r.Seed = Ticks
		    userChange = r.InRange(-30, 65)
		    MyDistro.Users = MyDistro.Users + userChange
		    
		    if userChange > -1 then
		      lblResults.Text = "Users: +" + str(userChange) 
		    else
		      lblResults.Text = "Users: " + str(userChange)
		    end if
		    
		    if hypeChange > -1 then
		      lblResults.Text = lblResults.Text + "    Hype: +" + str(hypeChange)
		    else
		      lblResults.Text = lblResults.Text + "    Hype: " + str(hypeChange)
		    end if
		    
		    UpdateWorkers
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
