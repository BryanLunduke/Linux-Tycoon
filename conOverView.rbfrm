#tag Window
Begin ContainerControl conOverView
   AcceptFocus     =   ""
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   7902155
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   True
   Height          =   50
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
   Width           =   427
   Begin canLabel lblUsers
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      isMouseOver     =   ""
      Left            =   174
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   true
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextSize        =   0
      Top             =   15
      UseFocusRing    =   True
      Visible         =   True
      Width           =   103
   End
   Begin canLabel lblAge
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      isMouseOver     =   ""
      Left            =   292
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   true
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextSize        =   0
      Top             =   15
      UseFocusRing    =   True
      Visible         =   True
      Width           =   103
   End
   Begin canLabel lblName
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      isMouseOver     =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   true
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextSize        =   0
      Top             =   15
      UseFocusRing    =   True
      Visible         =   True
      Width           =   135
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
		  UpdateStats
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture mybg,0,0
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
		Sub UpdateStats()
		  if MyDistro <> nil then
		    lblUsers.Text = "Users: " + str(MyDistro.Users)
		    lblName.Text = MyDistro.Name + " " + str(MyDistro.ReleasedVer) + ".0"
		    if MyDistro.ReleasedDate <> nil then
		      
		      'lblAge.Text = "Age: " + str((round(TheDate.TotalSeconds - MyDistro.ReleasedDate.TotalSeconds) / 86400)) + " days"
		      if TargetWin32 then
		        'lblAge.Text = "Age: " + NthField(str((round(TheDate.TotalSeconds - MyDistro.ReleasedDate.TotalSeconds) / 86400)),".",1) + " days"
		      end if
		      lblAge.Text = "Age: " + NthField(str((round(TheDate.TotalSeconds - MyDistro.ReleasedDate.TotalSeconds) / 86400)),".",1) + " days"
		    end if
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

#tag Events lblUsers
	#tag Event
		Sub Open()
		  me.TextAlign = "Left"
		  me.TextSize = 12
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblAge
	#tag Event
		Sub Open()
		  me.TextAlign = "Left"
		  me.TextSize = 12
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblName
	#tag Event
		Sub Open()
		  me.TextAlign = "Left"
		  me.TextSize = 12
		End Sub
	#tag EndEvent
#tag EndEvents
