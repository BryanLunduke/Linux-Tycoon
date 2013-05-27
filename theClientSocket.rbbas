#tag Class
Protected Class theClientSocket
Inherits TCPSocket
	#tag Event
		Sub DataAvailable()
		  if me.Lookahead.InStr(kCommComplete) > 0 then
		    'MsgBox me.Lookahead
		    ProcessFunctions
		    isBusy = false
		    NextInQueue
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Error()
		  MsgBox "Connection to server interrupted.  Linux Tycoon will now quit."
		  Quit
		  'MsgBox str(me.LastErrorCode)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub FetchFullUpdate()
		  dim s as string
		  
		  s = "GetUpdate"
		  
		  me.Write s + kCommComplete
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchFullUpdateWithoutMyDistro()
		  dim s as string
		  
		  s = "GetUpdateWithoutMyDistro"
		  
		  me.Write s + kCommComplete
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchTimeUpdate()
		  me.Write "GetTime" + kCommComplete
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewUserCheck(emailaddy as string, password as string)
		  dim s as string
		  
		  MyDistro.MMOEmail = emailaddy
		  MyDistro.MMOPass = password
		  s = "NewUserCheck" + kCommSeparator + emailaddy + kCommSeparator + password
		  
		  me.Write s + kCommComplete
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NextInQueue()
		  
		  if queue.Ubound > -1 then
		    
		    super.Write queue(0)
		    isBusy = true
		    queue.Remove(0)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ProcessFullUpdate(s as string)
		  dim theXML as string
		  
		  theXML = s.NthField(kCommSeparator,2)
		  
		  MMOLoadFullUpdateXML(theXML)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ProcessFullUpdateWithoutMyDistro(s as string)
		  dim theXML as string
		  
		  theXML = s.NthField(kCommSeparator,2)
		  
		  MMOLoadFullUpdateXMLWithoutMyDistro(theXML)
		  
		  frmMain.myConIntro.Visible = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ProcessFunctions()
		  dim s as string
		  
		  s = me.ReadAll
		  
		  s = ReplaceAll(s, kCommComplete,"")
		  
		  // New User Creation May proceed
		  if s.InStr("NewUserAvailable") = 1 then
		    frmMain.myConNewUser.Visible = false
		    MMONewUser = true
		    'frmMain.myConIntro.Visible = true
		    FetchFullUpdateWithoutMyDistro
		    GameMode = KModeOnline
		    if GameMode = KModeOnline then
		      frmMain.btnPause.Enabled = False
		      frmMain.btnPause.Visible = false
		      frmMain.myConDistoStats.btnSaveQuit.Text = "Quit"
		    end if
		  end if
		  
		  // New User Creation May not proceed
		  if s.InStr("NewUserNotAvailable") = 1 then
		    MsgBox "That email address is already in use on this server."
		  end if
		  
		  // Log in successfull
		  if s.InStr("LoggedIn") = 1 then
		    // Fetch a full update
		    FetchFullUpdate()
		    
		    '// Show all proper displays
		    'frmMain.myConLogin.Visible = false
		    'frmMain.myConDistoStats.Visible = true
		    'frmMain.myConDistroRank.Visible = true
		    'frmMain.myConNotifications.Visible = true
		    'frmMain.myConOverView.Visible = true
		  end if
		  
		  // Log in not successfull
		  if s.InStr("NotLoggedIn") = 1 then
		    MsgBox "Incorrect credentials."
		  end if
		  
		  
		  // Full Update Received
		  if s.InStr("FullUpdate") = 1 and s.InStr("FullUpdateWithoutMyDistro") = 0 then
		    ProcessFullUpdate(s)
		    'toSend = "FullUpdate" + kCommSeparator + MMOGenerateXMLForFullUpdate(i)
		    'MsgBox "Incorrect credentials."
		  end if
		  
		  // Full Update Received Without My Distro
		  if s.InStr("FullUpdateWithoutMyDistro") = 1 then
		    ProcessFullUpdateWithoutMyDistro(s)
		  end if
		  
		  // Time Update
		  if s.InStr("TimeUpdate") = 1 then
		    ProcessTimeUpdate(s)
		    's = "TimeUpdate" + kCommSeparator + Str(GeneralStuff.TheDate.TotalSeconds) + kCommSeparator + str(GeneralStuff.TheNextUpdate.TotalSeconds)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ProcessTimeUpdate(s as string)
		  
		  GeneralStuff.TheDate.TotalSeconds = val(s.NthField(kCommSeparator,2))
		  'GeneralStuff.TheNextUpdate.TotalSeconds = val(s.NthField(kCommSeparator,3))
		  
		  's = "TimeUpdate" + kCommSeparator + Str(GeneralStuff.TheDate.TotalSeconds) + kCommSeparator + str(GeneralStuff.TheNextUpdate.TotalSeconds)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendMyDistroUpdateToServer()
		  dim s as string
		  
		  s = "PostUpdate" + kCommSeparator + MyDistro.GetDistroXML
		  
		  me.Write s + kCommComplete
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(Text As String)
		  if isBusy = true then
		    queue.Append Text
		  else
		    super.Write(Text)
		    isBusy = true
		    
		  end if
		  
		  'MsgBox Text
		  'frmMain.Title = str(queue.Ubound)
		  'MsgBox text
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		isBusy As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected queue() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		rootDir As folderItem
	#tag EndProperty


	#tag Constant, Name = kCommComplete, Type = String, Dynamic = False, Default = \"[*Complete*]", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCommSeparator, Type = String, Dynamic = False, Default = \"[*/*]", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isBusy"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
