#tag Module
Protected Module REALEasyPrefs
	#tag Method, Flags = &h0
		Sub DeletePref(fieldName as string)
		  Dim n as integer
		  
		  for n=1 to UBound(prefNames)
		    if prefNames(n)=fieldName then
		      prefNames.remove n
		      prefItems.remove n
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Designerfolder() As folderItem
		  dim f as FolderItem
		  
		  if TargetLinux = true then
		    f = SpecialFolder.UserHome.Child(".linuxtycoon")
		  elseif TargetWin32 = true then
		    f = SpecialFolder.ApplicationData.Child("linuxtycoon")
		  elseif TargetMacOS = true then
		    f = SpecialFolder.ApplicationData.Child("com.lunduke.linuxtycoon")
		  end if
		  
		  if f <> nil then
		    
		  else
		    f = SpecialFolder.ApplicationData.Child("com.lunduke.linuxtycoon")
		  end if
		  
		  if f <> nil then
		    
		  else
		    MsgBox "Error Creating Application Support folder"
		  end if
		  
		  if f.Exists = false then
		    f.CreateAsFolder
		  end if
		  
		  app.YieldToNextThread
		  app.DoEvents
		  
		  if f.Exists = false then
		    f.CreateAsFolder
		  end if
		  
		  app.YieldToNextThread
		  app.DoEvents
		  
		  if f.Exists = false then
		    f.CreateAsFolder
		  end if
		  
		  app.YieldToNextThread
		  app.DoEvents
		  
		  if f.Exists = false then
		    f.CreateAsFolder
		  end if
		  
		  if f.Exists = false then
		    MsgBox "Error Initializing Application Support Folder."
		  end if
		  
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrefBoolean(fieldName as string,default as boolean) As Boolean
		  Dim strBoolean as string
		  
		  strBoolean="false"
		  if default then
		    strBoolean="true"
		  end if
		  
		  strBoolean=GetPrefString(fieldName,strBoolean)
		  
		  if strBoolean="true" then
		    return true
		  else
		    return false
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrefColor(fieldName as string,default as Color) As Color
		  Dim colString as string
		  
		  colString=Str(default.red)+","+Str(default.green)+","+Str(default.blue)
		  colString=GetPrefString(fieldName,colString)
		  return RGB(Val(NthField(colString,",",1)),Val(NthField(colString,",",2)),Val(NthField(colString,",",3)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrefDouble(fieldName as string, default as double) As Double
		  return Val(GetPrefString(fieldName,Str(default)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrefFolderItem(fieldName as string,default as FolderItem) As FolderItem
		  Dim strFolderItem as string
		  
		  if default=nil then
		    strFolderItem=""
		  else
		    strFolderItem=default.AbsolutePath
		  end if
		  
		  strFolderItem=GetPrefString(fieldName,strFolderItem)
		  if strFolderItem="" then
		    return nil
		  else
		    return GetFolderItem(strFolderItem)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPrefListBox(fieldName as string,default as ListBox)
		  Dim row,col as integer
		  Dim trows,tcols as integer
		  
		  trows=GetPrefNumber(fieldName+" NRows",default.ListCount)
		  tcols=GetPrefNumber(fieldName+" NCols",default.ColumnCount)
		  
		  default.ColumnCount=tcols
		  default.ColumnWidths=GetPrefString(fieldName+" CWidths",default.ColumnWidths)
		  
		  
		  for row=0 to trows-1
		    default.AddRow ""
		    for col=0 to tcols-1
		      default.Cell(row,col)=GetPrefString(fieldName+" Cell("+Str(row)+","+Str(col)+")","")
		    next
		  next
		  
		  for row=0 to trows-1
		    if GetPrefBoolean(fieldName+" Sel "+Str(row),false) then
		      default.Selected(row)=true
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrefNumber(fieldName as string,default as integer) As Integer
		  return Val(GetPrefString(fieldName,Str(default)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPrefPopupMenu(fieldName as string,default as PopupMenu)
		  Dim n,total as integer
		  
		  //Items
		  total=GetPrefNumber(fieldName+" Items",0)
		  for n=0 to total-1
		    default.AddRow GetPrefString(fieldName+" Item "+Str(n),"")
		  next
		  
		  //Selection
		  default.ListIndex=GetPrefNumber(fieldName+" Selection",default.ListIndex)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrefString(fieldName as string,default as string) As String
		  Dim n as integer
		  
		  for n=1 to UBound(prefNames)
		    if prefNames(n)=fieldName then
		      return prefItems(n)
		    end if
		  next
		  
		  return default
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPrefWindow(fieldName as string, default as Window)
		  Dim winStr as string
		  
		  winStr=Str(default.left)+","+Str(default.top)+","+Str(default.width)+","+Str(default.height)
		  winStr=GetPrefString(fieldName,winStr)
		  
		  default.left=Val(NthField(winStr,",",1))
		  default.top=Val(NthField(winStr,",",2))
		  default.width=Val(NthField(winStr,",",3))
		  default.height=Val(NthField(winStr,",",4))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitPrefFile(prefName as string)
		  Dim aOut as TextOutputStream
		  Dim aIn as TextInputStream
		  
		  
		  prefFile = Designerfolder.Child(prefName)
		  
		  if prefFile <> nil then
		    
		  else
		    MsgBox "Error Initializing Preference File."
		  end if
		  
		  if not prefFile.Exists then
		    aOut=prefFile.CreateTextFile
		  else
		    aIn=prefFile.OpenAsTextFile
		    while not aIn.EOF
		      prefNames.append aIn.ReadLine
		      prefItems.append aIn.ReadLine
		    wend
		  end if
		  
		  if prefFile.Exists = false then
		    
		    MsgBox "Error Creating Preference File."
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefBoolean(fieldName as string,fieldValue as Boolean)
		  Dim strBoolean as string
		  
		  strBoolean="false"
		  if fieldValue then
		    strBoolean="true"
		  end if
		  
		  SetPrefString(fieldName,strBoolean)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefColor(fieldName as string,fieldValue as Color)
		  Dim colString as string
		  
		  colString=Str(fieldValue.red)+","+Str(fieldValue.green)+","+Str(fieldValue.blue)
		  SetPrefString(fieldName,colString)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefDouble(fieldName as string, fieldValue as double)
		  SetPrefString(fieldName,Str(fieldValue))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefFolderItem(fieldName as string, fieldValue as FolderItem)
		  if fieldValue=nil then
		    DeletePref(fieldName)
		    return
		  end if
		  SetPrefString(fieldName,fieldValue.AbsolutePath)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefListBox(fieldName as string,fieldValue as ListBox)
		  Dim row,col as integer
		  Dim trows,tcols as integer
		  
		  //------Remove Old
		  trows=GetPrefNumber(fieldName+" NRows",0)
		  tcols=GetPrefNumber(fieldName+" NCols",0)
		  
		  DeletePref(fieldName+" NRows")
		  DeletePref(fieldName+" NCols")
		  DeletePref(fieldName+" CWidths")
		  
		  for row=0 to trows-1
		    for col=0 to tcols-1
		      DeletePref(fieldName+" Cell("+Str(row)+","+Str(col)+")")
		    next
		  next
		  
		  for row=0 to trows-1
		    DeletePref(fieldName+" Sel "+Str(row))
		  next
		  
		  
		  //------Add New
		  
		  'Num Rows
		  SetPrefNumber(fieldName+" NRows",fieldValue.ListCount)
		  'NumCols
		  SetPrefNumber(fieldName+" NCols",fieldValue.ColumnCount)
		  'ColWidth
		  SetPrefString(fieldName+" CWidths",fieldValue.ColumnWidths)
		  'cells
		  for row=0 to fieldValue.ListCount-1
		    for col=0 to fieldValue.ColumnCount-1
		      SetPrefString(fieldName+" Cell("+Str(row)+","+Str(col)+")",fieldValue.Cell(row,col))
		    next
		  next
		  'selections
		  for row=0 to fieldValue.ListCount-1
		    if fieldValue.Selected(row) then
		      SetPrefBoolean(fieldName+" Sel "+Str(row),true)
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefNumber(fieldName as string,fieldValue as integer)
		  SetPrefString(fieldName,Str(fieldValue))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefPopupMenu(fieldName as string,fieldValue as PopupMenu)
		  Dim n,total as integer
		  
		  //----Remove Old
		  //Items
		  total=GetPrefNumber(fieldName+" Items",0)
		  DeletePref(fieldName+" Items")
		  for n=0 to total-1
		    DeletePref(fieldName+" Item "+Str(n))
		  next
		  
		  //Selection
		  DeletePref(fieldName+" Selection")
		  
		  
		  //-----Add New
		  //Items
		  SetPrefNumber(fieldName+" Items",fieldValue.ListCount)
		  for n=0 to fieldValue.ListCount-1
		    SetPrefString(fieldName+" Item "+Str(n),fieldValue.List(n))
		  next
		  //Selection
		  SetPrefNumber(fieldName+" Selection",fieldValue.ListIndex)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefString(fieldName as string,fieldValue as string)
		  Dim n as integer
		  
		  for n=1 to UBound(prefNames)
		    if prefNames(n)=fieldName then
		      prefItems(n)=fieldValue
		      return
		    end if
		  next
		  
		  prefNames.append fieldName
		  prefItems.append fieldValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefWindow(fieldName as string,fieldValue as Window)
		  Dim winStr as String
		  
		  if fieldValue=nil then
		    DeletePref(fieldName)
		    return
		  end if
		  
		  winStr=Str(fieldValue.left)+","+Str(fieldValue.top)+","+Str(fieldValue.width)+","+Str(fieldValue.height)
		  SetPrefString(fieldName,winStr)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WritePrefsFile()
		  Dim aOut as TextOutputStream
		  Dim n as integer
		  
		  prefFile.Delete
		  aOut=prefFile.CreateTextFile
		  for n=1 to UBound(prefNames)
		    aOut.WriteLine prefNames(n)
		    aOut.WriteLine prefItems(n)
		  next
		  'By Chris Comeau
		  prefFile.MacType="pref"
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected prefFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected prefItems(0) As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected prefNames(0) As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
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
	#tag EndViewBehavior
End Module
#tag EndModule
