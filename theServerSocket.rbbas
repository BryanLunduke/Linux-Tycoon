#tag Class
Protected Class theServerSocket
Inherits TCPSocket
	#tag Event
		Sub DataAvailable()
		  ProcessFunctions
		End Sub
	#tag EndEvent

	#tag Event
		Sub Error()
		  'MsgBox str(me.LastErrorCode)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub GetFullUpdate(s as string)
		  dim EmailAddy as string
		  dim Password as string
		  
		  EmailAddy = Lowercase(s.NthField(kCommSeparator,2))
		  Password = s.NthField(kCommSeparator,3)
		  
		  // Search for email and pass
		  dim toSend as string
		  dim i as integer
		  
		  i = GetDistroIndexFromMMOEmail(EmailAddy)
		  
		  
		  if i = -1 then
		    
		  else
		    
		    if OtherDistros(i).MMOPass = Password then
		      
		      
		      toSend = "FullUpdate" + kCommSeparator + MMOGenerateXMLForFullUpdate(i)
		      me.Write toSend
		      
		    end if
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub GetFullUpdateWithoutMyDistro()
		  
		  dim toSend as string
		  
		  toSend = "FullUpdateWithoutMyDistro" + kCommSeparator + MMOGenerateXMLForFullUpdateWithoutMyDistro
		  
		  me.Write toSend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub GetTimeUpdate()
		  dim s as string
		  
		  s = "TimeUpdate" + kCommSeparator + Str(GeneralStuff.TheDate.TotalSeconds) + kCommSeparator + str(GeneralStuff.TheNextUpdate.TotalSeconds)
		  
		  me.Write s
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Login(s as string)
		  dim EmailAddy as string
		  dim Password as string
		  
		  EmailAddy = Lowercase(s.NthField(kCommSeparator,2))
		  Password = s.NthField(kCommSeparator,3)
		  
		  // Search for email and pass
		  
		  dim i as integer
		  dim result as string
		  
		  i = GetDistroIndexFromMMOEmail(EmailAddy)
		  
		  result = "NotLoggedIn"
		  
		  if i = -1 then
		    
		  else
		    
		    if OtherDistros(i).MMOPass = Password then
		      result = "LoggedIn"
		    end if
		    
		  end if
		  
		  
		  
		  me.Write result
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NewUserCheck(s as string)
		  dim EmailAddy as string
		  dim Password as string
		  
		  EmailAddy = Lowercase(s.NthField(kCommSeparator,2))
		  Password = s.NthField(kCommSeparator,3)
		  
		  // Search for email in use.  Inform client.
		  dim i as integer
		  dim result as string
		  
		  result = "NewUserAvailable"
		  
		  for i = 0 to OtherDistros.Ubound
		    if OtherDistros(i).MMOEmail = EmailAddy then
		      result = "NewUserNotAvailable"
		    end if
		  next
		  
		  me.Write result
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ProcessFunctions()
		  dim s as string
		  
		  s = me.ReadAll
		  
		  // Log In
		  if s.InStr("Login") = 1 then
		    Login(s)
		  end if
		  
		  // New User Check
		  if s.InStr("NewUserCheck") = 1 then
		    NewUserCheck(s)
		  end if
		  
		  // Post Full Update From Client
		  if s.InStr("PostUpdate") = 1 then
		    ProcessMyDistroUpdateFromClient(s)
		  end if
		  
		  // Reset Password
		  if s.InStr("Reset") = 1 then
		    
		  end if
		  
		  // Get Full Update From Server Without MyDistro
		  // Only needed on initial grab, before account is created
		  if s.InStr("GetUpdateWithoutMyDistro") = 1 then
		    GetFullUpdateWithoutMyDistro
		  end if
		  
		  // Get Full Update From Server
		  if s.InStr("GetUpdate") = 1 then
		    GetFullUpdate(s)
		  end if
		  
		  // Get Time Update From Server
		  if s.InStr("GetTime") = 1 then
		    GetTimeUpdate
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ProcessMyDistroUpdateFromClient(s as string)
		  '// Post Full Update From Client
		  'if s.InStr("PostUpdate") = 1 then
		  'ProcessMyDistroUpdateFromClient(s)
		  'end if
		  
		  dim thexml as string
		  thexml = s.NthField(kCommSeparator,2)
		  
		  dim xdoc as XmlDocument
		  dim node as XmlNode
		  
		  xdoc = new XmlDocument
		  xdoc.LoadXml(thexml)
		  
		  dim theIndex as integer
		  dim newDistro as Distro
		  
		  theIndex = GetDistroIndexFromMMOEmail(xdoc.Child(1).GetAttribute("MMOEmail"))
		  
		  if theIndex = -1 then // Doesn't exist.  Create it.
		    
		    newDistro = new Distro
		    newDistro.Name = xdoc.Child(1).GetAttribute("Name")
		    newDistro.Version = val(xdoc.Child(1).GetAttribute("Version"))
		    newDistro.LoadInPackagesFromList(xdoc.Child(1).GetAttribute("Packages"))
		    newDistro.ReleasedDate = new date
		    newDistro.ReleasedDate.TotalSeconds = xdoc.Child(1).GetAttribute("ReleasedDate").Val
		    newDistro.ReleasedVer = xdoc.Child(1).GetAttribute("ReleasedVer").Val
		    newDistro.ReleasedBugs = xdoc.Child(1).GetAttribute("ReleasedBugs").Val
		    newDistro.MMOEmail = xdoc.Child(1).GetAttribute("MMOEmail")
		    newDistro.MMOPass = xdoc.Child(1).GetAttribute("MMOPass")
		    newDistro.LoadInPackagesFromList(xdoc.Child(1).GetAttribute("Packages"))
		    newDistro.LoadInWorkersPaidFromList(xdoc.Child(1).GetAttribute("WorkersPaid"))
		    newDistro.LoadInWorkersVolunteersFromList(xdoc.Child(1).GetAttribute("WorkersVolunteer"))
		    
		    OtherDistros.Append newDistro
		    
		  else  // Update it
		    
		    OtherDistros(theIndex).Name = xdoc.Child(1).GetAttribute("Name")
		    OtherDistros(theIndex).Version = val(xdoc.Child(1).GetAttribute("Version"))
		    OtherDistros(theIndex).LoadInPackagesFromList(xdoc.Child(1).GetAttribute("Packages"))
		    OtherDistros(theIndex).ReleasedDate = new date
		    OtherDistros(theIndex).ReleasedDate.TotalSeconds = xdoc.Child(1).GetAttribute("ReleasedDate").Val
		    OtherDistros(theIndex).ReleasedVer = xdoc.Child(1).GetAttribute("ReleasedVer").Val
		    OtherDistros(theIndex).ReleasedBugs = xdoc.Child(1).GetAttribute("ReleasedBugs").Val
		    OtherDistros(theIndex).MMOEmail = xdoc.Child(1).GetAttribute("MMOEmail")
		    OtherDistros(theIndex).MMOPass = xdoc.Child(1).GetAttribute("MMOPass")
		    OtherDistros(theIndex).LoadInPackagesFromList(xdoc.Child(1).GetAttribute("Packages"))
		    OtherDistros(theIndex).LoadInWorkersPaidFromList(xdoc.Child(1).GetAttribute("WorkersPaid"))
		    OtherDistros(theIndex).LoadInWorkersVolunteersFromList(xdoc.Child(1).GetAttribute("WorkersVolunteer"))
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ResetPassword(s as string)
		  dim EmailAddy as string
		  dim Password as string
		  
		  EmailAddy = s.NthField(kCommSeparator,2)
		  
		  
		  
		End Sub
	#tag EndMethod


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
