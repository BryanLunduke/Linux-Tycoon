#tag Window
Begin ContainerControl conNotifications
   AcceptFocus     =   ""
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   16777215
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   314
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
   Width           =   235
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
   Begin ScrollBar scrlMessage
      AcceptFocus     =   true
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   277
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   205
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   1
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   17
      Value           =   0
      Visible         =   True
      Width           =   16
   End
   Begin canLabel lblMessage
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   277
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      isMouseOver     =   ""
      Left            =   59
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   true
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextSize        =   0
      Top             =   17
      UseFocusRing    =   True
      Visible         =   True
      Width           =   145
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
		Sub AddNewMessage(theMessage as string)
		  msgText.Append theMessage
		  
		  dim d as date
		  d = new date
		  d.TotalSeconds = GeneralStuff.TheDate.TotalSeconds
		  
		  msgDate.Append d
		  
		  if msgText.Ubound > 30 then
		    msgText.Remove(0)
		    msgDate.Remove(0)
		  end if
		  
		  ShowAllMessages
		End Sub
	#tag EndMethod

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
		Sub ShowAllMessages()
		  dim i as integer
		  
		  
		  lblMessage.Text = ""
		  
		  if msgText.Ubound > -1 then
		    for i = 0 to msgText.Ubound
		      
		      lblMessage.Text = "[" + msgDate(i).AbbreviatedDate + "] - " + msgText(i) + EndOfLine + EndOfLine + lblMessage.Text
		      
		    next
		  end if
		  
		  scrlMessage.Value = 0
		  scrlMessage.Maximum = i - 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowMessagesStartingAtIndex(atIndex as integer)
		  dim i as integer
		  
		  lblMessage.Text = ""
		  
		  if msgText.Ubound > -1 then
		    for i = 0 to (msgText.Ubound - atIndex)
		      
		      lblMessage.Text = "[" + msgDate(i).AbbreviatedDate + "] - " + msgText(i) + EndOfLine + EndOfLine + lblMessage.Text
		      
		    next
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		msgDate() As date
	#tag EndProperty

	#tag Property, Flags = &h0
		msgText() As string
	#tag EndProperty

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

#tag Events scrlMessage
	#tag Event
		Sub ValueChanged()
		  ShowMessagesStartingAtIndex(me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblMessage
	#tag Event
		Sub Open()
		  me.TextAlign = "Left"
		  me.isMultiLine = true
		  me.TextSize = 10
		  
		End Sub
	#tag EndEvent
#tag EndEvents
