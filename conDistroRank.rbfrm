#tag Window
Begin ContainerControl conDistroRank
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
   Width           =   173
   Begin Listbox listRank
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   ""
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   25
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   ""
      HeadingIndex    =   -1
      Height          =   261
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   12
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
      Top             =   33
      Underline       =   ""
      UseFocusRing    =   False
      Visible         =   True
      Width           =   149
      _ScrollWidth    =   -1
   End
   Begin Label Label1
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
      Left            =   12
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "DistroRank"
      TextAlign       =   1
      TextColor       =   16515070
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   11
      Transparent     =   True
      Underline       =   ""
      Visible         =   True
      Width           =   149
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

	#tag Method, Flags = &h0
		Sub SortDistroRank()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDistroRank()
		  dim lastScroll as integer
		  dim lastSelectedTag as integer
		  
		  'listRank.Enabled=false
		  
		  lastScroll = listRank.ScrollPosition
		  if listRank.ListIndex > -1 then
		    lastSelectedTag = listRank.RowTag(listRank.ListIndex)
		  else
		    lastSelectedTag = -2
		  end if
		  
		  'dim rowsToDel as integer
		  'rowsToDel = listRank.ListCount
		  
		  'listRank.DeleteAllRows
		  
		  // Add all distros
		  dim i as integer
		  
		  if listRank.ListCount < 1 then
		    
		    for i = 0 to OtherDistros.Ubound
		      listRank.AddRow str(OtherDistros(i).Users)
		      listRank.RowTag(listRank.LastIndex) = i
		    next
		    
		    // Add my own distro
		    listRank.AddRow str(MyDistro.Users)
		    listRank.RowTag(listRank.LastIndex) = -1
		    
		  else
		    
		    for i = 0 to (listRank.ListCount -1)
		      
		      if listRank.RowTag(i) = -1 then
		        listRank.Cell(i,0) = str(MyDistro.Users)
		      else
		        listRank.Cell(i,0) = str(OtherDistros(listRank.RowTag(i)).Users)
		      end if
		      
		    next
		    
		    
		    
		  end if
		  
		  listRank.SortedColumn = 0
		  listRank.Sort
		  
		  for i = 0 to (listRank.ListCount - 1)
		    if listRank.RowTag(i) = lastSelectedTag then
		      listRank.ListIndex = i
		    end if
		  next
		  
		  'for i = rowsToDel DownTo 0
		  'listRank.RemoveRow(i)
		  'next
		  
		  listRank.ScrollPosition = lastScroll
		  
		  
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

#tag Events listRank
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  'listRank.AddRow OtherDistros(i).Name
		  'listRank.RowTag(listRank.LastIndex) = i
		  
		  g.ForeColor = rgb(0,0,0)
		  g.TextSize = 16
		  g.DrawString str(row + 1), 0, 18
		  
		  if me.RowTag(row) > -1 then
		    
		    g.ForeColor = rgb(0,0,0)
		    g.TextSize = 12
		    g.DrawString OtherDistros(me.RowTag(row)).Name, 22, 13
		    
		    g.ForeColor = rgb(50,50,50)
		    g.TextSize = 8
		    g.DrawString "Users: " + str(OtherDistros(me.RowTag(row)).Users), 22, 22
		    
		  else  // If it's -1 then that's my distro
		    
		    g.ForeColor = rgb(0,0,0)
		    g.TextSize = 12
		    g.DrawString MyDistro.Name, 22, 13
		    
		    g.ForeColor = rgb(50,50,50)
		    g.TextSize = 8
		    g.DrawString "Users: " + str(MyDistro.Users), 22, 22
		    
		  end if
		  
		  Return true
		End Function
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  
		  if val( me.Cell( row1, 0 )) > val( me.Cell( row2, 0)) then
		    result = -1 //Value in row1 is higher
		    return true
		    
		  elseif val( me.Cell( row1, 0 )) < val( me.Cell( row2, 0)) then
		    result = 1 //Value in row2 is higher
		    return true
		    
		  else //Both values are equal
		    result = 0
		    return true
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
