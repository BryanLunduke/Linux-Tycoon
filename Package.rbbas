#tag Class
Protected Class Package
	#tag Method, Flags = &h0
		Sub AddABug()
		  bugs = bugs + 1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPackageXML() As string
		  dim s as string
		  dim isos as string
		  
		  if isOpenSource = true then
		    isos = "True"
		  else
		    isos = "False"
		  end if
		  
		  s = "<package Name=""" + me.Name + """ Bugs=""" + str(me.Bugs) + """ Description=""" + _
		  me.Description + """ NerdCred=""" + str(me.NerdCred) + """ Popularity=""" + str(me.Popularity) + _
		  """ SizeInMB=""" + str(me.SizeInMB) + """ TypeOfSoftware=""" + str(TypeOfSoftware) + _
		  """ Version=""" + str(me.Version) + """ isOpenSource=""" + isos + """/>"
		  
		  Return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveABug()
		  if bugs > 0 then
		    bugs = bugs - 1
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Bugs As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Description As string
	#tag EndProperty

	#tag Property, Flags = &h0
		isOpenSource As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Logo As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		NerdCred As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Popularity As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SizeInMB As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TypeOfSoftware As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Version As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bugs"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isOpenSource"
			Group="Behavior"
			Type="Boolean"
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
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NerdCred"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Popularity"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SizeInMB"
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
			Name="TypeOfSoftware"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
