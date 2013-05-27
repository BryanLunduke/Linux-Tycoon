#tag Module
Protected Module modPrefs
	#tag Method, Flags = &h0
		Function isRegGood() As boolean
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadAllPrefs()
		  prefFirstRun = getPrefBoolean("prefFirstRun", true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowUnregisteredDialog()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteAllPrefs()
		  prefFirstRun = false
		  
		  setPrefBoolean("prefFirstRun", false)
		  
		  
		  WritePrefsFile()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		prefFirstRun As boolean
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
			Name="prefFirstRun"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="regCode"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="regName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
