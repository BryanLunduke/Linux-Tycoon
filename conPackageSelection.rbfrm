#tag Window
Begin ContainerControl conPackageSelection
   AcceptFocus     =   ""
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   16777215
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   334
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
   Width           =   500
   Begin Listbox listPackages
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   2
      ColumnsResizable=   ""
      ColumnWidths    =   25
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   45
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   ""
      HeadingIndex    =   -1
      Height          =   247
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
      Width           =   468
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
      Text            =   "Package Selection"
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
      Left            =   413
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
      Top             =   292
      UseFocusRing    =   True
      Visible         =   True
      Width           =   67
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  UpdatePackageList
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
		  UpdatePackageList
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
		Sub UpdatePackageList()
		  listPackages.DeleteAllRows
		  
		  dim i as integer
		  
		  for i = 0 to PackagesAvailable.Ubound
		    
		    listPackages.AddRow ""
		    listPackages.Cell(i,1) = PackagesAvailable(i).Name
		    listPackages.RowTag(i) = i
		    listPackages.CellType(i,0) = Listbox.TypeCheckbox
		    if MyDistro.IsPackageInDistro(i) = true then
		      listPackages.CellCheck(i,0) = true
		    else
		      listPackages.CellCheck(i,0) = false
		    end if
		    
		  next
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

#tag Events listPackages
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  if column = 1 then
		    
		    dim theCategory as string
		    
		    select case PackagesAvailable(me.RowTag(row)).TypeOfSoftware
		      
		    case kTypeWebBrowser
		      theCategory = "Web Browser"
		      
		    case kTypeOfficeSuite
		      theCategory = "Office Suite"
		      
		    case kTypeDesktopEnvironment
		      theCategory = "Desktop Environment"
		      
		    case kTypeGame
		      theCategory = "Game"
		      
		    case kTypeGraphicsEditing
		      theCategory = "Graphics"
		      
		    case kTypeProgramming
		      theCategory = "Programming"
		      
		    case kTypeCommunication
		      theCategory = "Communications"
		      
		    case kTypeUtility
		      theCategory = "Utility"
		      
		    case kTypeMultimedia
		      theCategory = "Multimedia"
		      
		    end select
		    
		    g.ForeColor = rgb(0,0,0)
		    g.TextSize = 13
		    g.DrawString PackagesAvailable(me.RowTag(row)).Name + " " + str(PackagesAvailable(me.RowTag(row)).Version) + ".0 - " + theCategory , 0,15
		    
		    g.ForeColor = rgb(50,50,50)
		    g.TextSize = 10
		    g.DrawString PackagesAvailable(me.RowTag(row)).Description, 0,27
		    
		    
		    g.ForeColor = rgb(80,80,80)
		    if PackagesAvailable(me.RowTag(row)).isOpenSource = true then
		      g.TextSize = 10
		      g.DrawString "OpenSource: Yes", 0,40
		    else
		      g.TextSize = 10
		      g.DrawString "OpenSource: No", 0,40
		    end if
		    
		    g.TextSize = 10
		    g.DrawString "Nerd Cred: " + str(PackagesAvailable(me.RowTag(row)).NerdCred), 100,40
		    
		    g.TextSize = 10
		    g.DrawString "Popularity: " + str(PackagesAvailable(me.RowTag(row)).Popularity), 180,40
		    
		    g.TextSize = 10
		    g.DrawString "Size(MB): " + str(PackagesAvailable(me.RowTag(row)).SizeInMB), 260,40
		    
		    g.TextSize = 10
		    g.DrawString "Bugs: " + str(PackagesAvailable(me.RowTag(row)).Bugs), 340,40
		    
		    
		    Return true
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    g.foreColor= rgb(255,255,255)
		  else
		    g.foreColor= rgb(245,245,245)
		  end if
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column = 0 then
		    
		    if listPackages.CellCheck(row,0) = true then
		      'if MyDistro.IsPackageInDistro(listPackages.RowTag(row)) = false then
		      MyDistro.AddPackageToDistro(listPackages.RowTag(row))
		      'end if
		    else
		      'if MyDistro.IsPackageInDistro(listPackages.RowTag(row)) = true then
		      MyDistro.RemovePackageFromDistro(listPackages.RowTag(row))
		      'end if
		    end if
		    
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOK
	#tag Event
		Sub Open()
		  me.Text = "OK!"
		  me.DrawNormal
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  
		  
		  frmMain.myConDistoStats.Visible = True
		  
		  if isFirstRun = true then
		    
		    frmMain.myConIntro.pageIntro.Value = 2
		    CenterContainer(frmMain.myConIntro)
		    frmMain.myConIntro.Left = frmMain.myConDistoStats.Left + frmMain.myConDistoStats.Width + 20
		    frmMain.myConIntro.top = frmMain.myConDistoStats.Top
		    frmMain.myConDistoStats.btnPackages.Enabled = false
		    frmMain.myConDistoStats.btnRelease.Enabled = false
		    frmMain.myConDistoStats.btnWorkers.Enabled = false
		    frmMain.myConIntro.Visible = true
		    
		    frmMain.myConDistoStats.Visible = True
		    
		  else
		    
		    
		  end if
		  
		  frmMain.myConPackageSelection.Visible = false
		  
		  if MyDistro.ReleasedVer > 0 then
		    
		    UnPause
		    frmMain.myConDistoStats.Visible = True
		    frmMain.myConDistroRank.Visible =True
		    frmMain.myConOverView.Visible = True
		    frmMain.myConNotifications.Visible = True
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
