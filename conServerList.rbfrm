#tag Window
Begin ContainerControl conServerList
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
   Width           =   476
   Begin Listbox listServers
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   ""
      ColumnWidths    =   "200, ,75"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   171
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Server	Address	Port"
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   54
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   436
      _ScrollWidth    =   -1
   End
   Begin canBtn btnConnect
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   False
      EraseBackground =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      isMouseOver     =   ""
      Left            =   336
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   ""
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   237
      UseFocusRing    =   True
      Visible         =   True
      Width           =   120
   End
   Begin canBtn btnRefresh
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
      Left            =   336
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   ""
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   20
      UseFocusRing    =   True
      Visible         =   True
      Width           =   120
   End
   Begin TCPSocket sockGetList
      Address         =   ""
      Height          =   32
      Index           =   -2147483648
      Left            =   -45
      LockedInPosition=   False
      Port            =   6174
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   237
      Width           =   32
   End
   Begin canBtn btnCancel
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
      Left            =   20
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
      Top             =   237
      UseFocusRing    =   True
      Visible         =   True
      Width           =   120
   End
   Begin TextField TextField1
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
      Italic          =   ""
      Left            =   152
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "bbs.lunduke.com"
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   20
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   172
   End
   Begin canLabel canLabel1
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
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      myEnabled       =   true
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextSize        =   0
      Top             =   20
      UseFocusRing    =   True
      Visible         =   True
      Width           =   120
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
		Sub ParseServerListXML(theXML as string)
		  dim xdoc as XmlDocument
		  dim node as XmlNode
		  
		  listServers.DeleteAllRows
		  
		  xdoc = new XmlDocument
		  
		  xdoc.LoadXml(thexml)
		  
		  node = xdoc.Child(1).FirstChild.FirstChild
		  'MsgBox theXML
		  // Load in the Server List
		  
		  
		  'listServers.AddRow "Local Test Server"
		  'listServers.Cell(listServers.LastIndex,1) = "localhost"
		  'listServers.Cell(listServers.LastIndex,2) = "6175"
		  
		  
		  do until node = Nil
		    
		    if node <> nil then
		      listServers.AddRow node.GetAttribute("Name")
		      listServers.Cell(listServers.LastIndex,1) = node.GetAttribute("Address")
		      listServers.Cell(listServers.LastIndex,2) = node.GetAttribute("Port")
		      
		      node = node.NextSibling
		    end if
		    
		  loop
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
		Sub StartGetServerList()
		  sockGetList.Port=6174
		  sockGetList.Address="bbs.lunduke.com"
		  sockGetList.Connect
		  'sockServerList.get("http://lunduke.com")
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

#tag Events listServers
	#tag Event
		Sub Change()
		  if me.ListIndex > -1 then
		    btnConnect.Enabled = true
		  else
		    btnConnect.Enabled = false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnConnect
	#tag Event
		Sub Open()
		  me.Text = "Connect"
		  me.DrawNormal
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  frmMain.myConServerList.Visible = false
		  frmMain.myConLogin.Visible = true
		  
		  myClientSocket.Address = listServers.Cell(listServers.ListIndex,1)
		  myClientSocket.Port = 6175
		  
		  myClientSocket.Connect
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRefresh
	#tag Event
		Sub Open()
		  me.Text = "Refresh"
		  me.DrawNormal
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  StartGetServerList
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sockGetList
	#tag Event
		Sub Connected()
		  me.Write "GetServerList"
		End Sub
	#tag EndEvent
	#tag Event
		Sub DataAvailable()
		  dim s as string
		  s = me.ReadAll
		  me.Close
		  ParseServerListXML(s)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Open()
		  me.Text = "Cancel"
		  me.DrawNormal
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  frmMain.myConServerList.Visible = false
		  frmMain.myConMainMenu.Visible = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events canLabel1
	#tag Event
		Sub Open()
		  me.TextAlign = "Left"
		  me.isMultiLine = False
		  me.TextSize = 12
		  me.Text = "Tracker Server:"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
