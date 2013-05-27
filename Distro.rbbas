#tag Class
Protected Class Distro
	#tag Method, Flags = &h0
		Sub AddPackageToDistro(PackageIndex as integer)
		  if IsPackageInDistro(PackageIndex) = false then
		    
		    PackagesIncluded.Append PackageIndex
		    WorkersPaidAssigned.Append(0)
		    WorkersVolunteersAssigned.Append(0)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GeneratePackageListForXML() As string
		  dim i as integer
		  dim s as string
		  
		  if PackagesIncluded.Ubound > 0 then
		    for i = 0 to PackagesIncluded.Ubound
		      
		      s = s + PackagesAvailable(PackagesIncluded(i)).Name
		      
		      if i < PackagesIncluded.Ubound then
		        s = s + ";"
		      end if
		      
		    next
		  end if
		  
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GeneratePaidAssignedListForXML() As string
		  dim i as integer
		  dim s as string
		  
		  if PackagesIncluded.Ubound > 0 then
		    for i = 0 to PackagesIncluded.Ubound
		      
		      s = s + str(WorkersPaidAssigned(i))
		      
		      if i < PackagesIncluded.Ubound then
		        s = s + ";"
		      end if
		      
		    next
		  end if
		  
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GenerateVolunteerAssignedListForXML() As string
		  dim i as integer
		  dim s as string
		  
		  if PackagesIncluded.Ubound > 0 then
		    for i = 0 to PackagesIncluded.Ubound
		      
		      s = s + str(WorkersVolunteersAssigned(i))
		      
		      if i < PackagesIncluded.Ubound then
		        s = s + ";"
		      end if
		      
		    next
		  end if
		  
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroAgeInDays() As integer
		  return (TheDate.TotalSeconds - MyDistro.ReleasedDate.TotalSeconds) / 86400
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroBugPercentage() As double
		  dim percentage as Double
		  dim allStats as Double
		  dim i as integer
		  
		  allStats = MyDistro.GetDistroBugs
		  for i = 0 to OtherDistros.Ubound
		    allStats = allStats + OtherDistros(i).GetDistroBugs
		  next
		  
		  percentage = MyDistro.GetDistroBugs / allStats
		  
		  'MsgBox str(MyDistro.GetDistroBugs) + " / " + str(allStats) + " / " + str(percentage)
		  if percentage <= 0 then
		    percentage = 0.01
		  end if
		  Return percentage '* 100
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroBugs() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      total = total + PackagesAvailable(PackagesIncluded(i)).Bugs
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroHypePercentage() As double
		  dim percentage as Double
		  dim allStats as Double
		  dim i as integer
		  
		  allStats = MyDistro.Hype
		  for i = 0 to OtherDistros.Ubound
		    allStats = allStats + OtherDistros(i).Hype
		  next
		  
		  percentage = Hype / allStats
		  if percentage <= 0 then
		    percentage = 0.01
		  end if
		  'MsgBox str(percentage)
		  Return percentage '* 100
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroNerdCred() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      total = total + PackagesAvailable(PackagesIncluded(i)).NerdCred
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroNerdCredPercentage() As double
		  dim percentage as Double
		  dim allStats as Double
		  dim i as integer
		  
		  allStats = MyDistro.GetDistroNerdCred
		  for i = 0 to OtherDistros.Ubound
		    allStats = allStats + OtherDistros(i).GetDistroNerdCred
		  next
		  
		  percentage = GetDistroNerdCred / allStats
		  'MsgBox str(percentage)
		  if percentage <= 0 then
		    percentage = 0.01
		  end if
		  Return percentage '* 100
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroPackagePopularity() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      total = total + PackagesAvailable(PackagesIncluded(i)).Popularity
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroPackagePopularityPercentage() As double
		  dim percentage as Double
		  dim allStats as Double
		  dim i as integer
		  
		  allStats = MyDistro.GetDistroPackagePopularity
		  for i = 0 to OtherDistros.Ubound
		    allStats = allStats + OtherDistros(i).GetDistroPackagePopularity
		  next
		  
		  percentage = GetDistroPackagePopularity / allStats
		  if percentage <= 0 then
		    percentage = 0.01
		  end if
		  Return percentage '* 100
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroSizeInMB() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      total = total + PackagesAvailable(PackagesIncluded(i)).SizeInMB
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroSizeInMBPercentage() As double
		  dim percentage as Double
		  dim allStats as Double
		  dim i as integer
		  
		  allStats = MyDistro.GetDistroSizeInMB
		  for i = 0 to OtherDistros.Ubound
		    allStats = allStats + OtherDistros(i).GetDistroSizeInMB
		  next
		  
		  percentage = GetDistroSizeInMB / allStats
		  if percentage <= 0 then
		    percentage = 0.01
		  end if
		  Return percentage '* 100
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroWorkerAvailablePaid() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      total = total + WorkersPaidAssigned(i)
		      'PackagesAvailable(PackagesIncluded(i)).WorkersAssignedPaid
		      
		    next
		    
		  end if
		  
		  Return WorkersPaid - total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroWorkerAvailableVolunteer() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      total = total + WorkersVolunteersAssigned(i)
		      'PackagesAvailable(PackagesIncluded(i)).WorkersAssignedVolunteer
		      
		    next
		    
		  end if
		  
		  Return WorkersVolunteers - total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDistroXML() As string
		  dim s as string
		  dim isos as string
		  
		  s = "<distro Name=""" + me.Name + """ Hype=""" + str(me.Hype) + _
		  """ Users=""" + str(me.Users) + """ Version=""" + str(me.Version) + _
		  """ ReleasedVer=""" + str(me.ReleasedVer) + """ ReleasedDate=""" + str(me.ReleasedDate.TotalSeconds) + _
		  """ ReleasedBugs=""" + str(me.ReleasedBugs)
		  
		  if GameMode <> kModeLocal then
		    s = s + """ MMOEmail=""" + me.MMOEmail + _
		    """ MMOPass=""" + me.MMOPass
		  end if
		  
		  // Add package list
		  s = s + """ Packages=""" + GeneratePackageListForXML
		  
		  // Add WorkersAssigned lists
		  s = s + """ WorkersPaid=""" + str(WorkersPaid)
		  s = s + """ WorkersVolunteer=""" + str(WorkersVolunteers)
		  s = s + """ WorkersPaidAssigned=""" + GeneratePaidAssignedListForXML
		  s = s + """ WorkersVolunteerAssigned=""" + GenerateVolunteerAssignedListForXML
		  
		  
		  s = s + """/>"
		  
		  
		  
		  Return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountCommunications() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeCommunication then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountDesktopEnvironment() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeDesktopEnvironment then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountGame() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeGame then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountGraphicsEditing() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeGraphicsEditing then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountMultimedia() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeMultimedia then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountOfficeSuite() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeOfficeSuite then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountProgramming() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeProgramming then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountUtility() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeUtility then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageCountWebBrowser() As integer
		  dim total as integer
		  
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).TypeOfSoftware = kTypeWebBrowser then
		        total = total + 1
		      end if
		      
		    next
		    
		  end if
		  
		  Return total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetWorkersPaidForPackage(PackageIndex as integer) As integer
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackageIndex = PackagesIncluded(i) then
		        Return WorkersPaidAssigned(i)
		      end if
		      
		    next
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetWorkersVolunteersForPackage(PackageIndex as integer) As integer
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackageIndex = PackagesIncluded(i) then
		        Return WorkersVolunteersAssigned(i)
		      end if
		      
		    next
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasNonOpenSourcePackages() As boolean
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesAvailable(PackagesIncluded(i)).isOpenSource = false then
		        Return true
		      end if
		      
		    next
		    
		  end if
		  
		  Return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsPackageInDistro(PackageIndex as integer) As Boolean
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackageIndex = PackagesIncluded(i) then
		        Return true
		      end if
		      
		    next
		    
		  end if
		  
		  Return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadInPackagesFromList(theList as string)
		  dim theIndex as integer
		  dim theName() as string
		  dim i as integer
		  
		  theName = Split(theList, ";")
		  
		  if theName.Ubound > -1 then
		    
		    for i = 0 to theName.Ubound
		      theIndex = GetPackageIndexFromName(theName(i))
		      'MsgBox theName(i)
		      if theIndex > -1 then
		        AddPackageToDistro(theIndex)
		      end if
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadInWorkersPaidFromList(theList as string)
		  dim theIndex as integer
		  dim theName() as string
		  dim i as integer
		  
		  theName = Split(theList, ";")
		  
		  if theName.Ubound > -1 then
		    
		    for i = 0 to theName.Ubound
		      
		      WorkersPaidAssigned(i) = val(theName(i))
		      
		      if val(theName(i)) > 0 then
		        isFirstWorkerPaid = false
		      end if
		      
		    next
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadInWorkersVolunteersFromList(theList as string)
		  dim theIndex as integer
		  dim theName() as string
		  dim i as integer
		  
		  theName = Split(theList, ";")
		  
		  if theName.Ubound > -1 then
		    
		    for i = 0 to theName.Ubound
		      
		      WorkersVolunteersAssigned(i) = val(theName(i))
		      
		      if val(theName(i)) > 0 then
		        isFirstWorkerVolunteer = false
		      end if
		      
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MMOUpdateFromXML(theXML as string)
		  '
		  '
		  's = "<distro Name=""" + me.Name + """ Hype=""" + str(me.Hype) + _
		  '""" Users=""" + str(me.Users) + """ Version=""" + str(me.Version) + _
		  '""" ReleasedVer=""" + str(me.ReleasedVer) + """ ReleasedDate=""" + str(me.ReleasedDate.TotalSeconds) + _
		  '""" ReleasedBugs=""" + str(me.ReleasedBugs)
		  '
		  '// Add package list
		  's = s + """ Packages=""" + GeneratePackageListForXML
		  '
		  '// Add WorkersAssigned lists
		  's = s + """ WorkersPaid=""" + GeneratePaidAssignedListForXML
		  's = s + """ WorkersVolunteer=""" + GenerateVolunteerAssignedListForXML
		  '
		  '
		  's = s + """/>"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessHype()
		  if me.Hype > 0 then
		    me.Hype = me.Hype - 1
		  end if
		  
		  if me.Hype < 0 then
		    me.Hype = me.Hype + 1
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReleaseNewVersion()
		  ReleasedDate = new date
		  ReleasedDate.TotalSeconds = GeneralStuff.TheDate.TotalSeconds
		  ReleasedBugs = GetDistroBugs
		  ReleasedVer = Version
		  
		  Version = Version + 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemovePackageFromDistro(PackageIndex as integer)
		  dim i as integer
		  
		  if PackagesIncluded.Ubound > -1 then
		    for i = 0 to PackagesIncluded.Ubound
		      
		      if PackagesIncluded(i) = PackageIndex then
		        'PackagesAvailable(PackagesIncluded(i)).WorkersAssignedPaid = 0
		        'PackagesAvailable(PackagesIncluded(i)).WorkersAssignedVolunteer = 0
		        PackagesIncluded.Remove(i)
		        WorkersPaidAssigned.Remove(i)
		        WorkersVolunteersAssigned.Remove(i)
		      end if
		      
		    next
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Bugs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Hype As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Logo As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		MMOEmail As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MMOPass As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		newUserChange As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PackagesIncluded() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ReleasedBugs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ReleasedDate As date
	#tag EndProperty

	#tag Property, Flags = &h0
		ReleasedVer As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Users As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Version As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WorkersPaid As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WorkersPaidAssigned() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WorkersVolunteers As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WorkersVolunteersAssigned() As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bugs"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hype"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="Logo"
			Group="Behavior"
			Type="picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MMOEmail"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MMOPass"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="newUserChange"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReleasedBugs"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReleasedVer"
			Group="Behavior"
			Type="Integer"
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
		#tag ViewProperty
			Name="Users"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WorkersPaid"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WorkersVolunteers"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
