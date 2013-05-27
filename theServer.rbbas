#tag Class
Protected Class theServer
Inherits ServerSocket
	#tag Event
		Function AddSocket() As TCPSocket
		  dim s as theServerSocket
		  s = new theServerSocket
		  return s
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Error(ErrorCode as Integer)
		  ' We got some sort of error, so report it
		  ' back to the user
		  MsgBox "Server Error: " + str( ErrorCode )
		  
		  ' Stop listening because we hit an error condition;
		  ' we want the user to restart us if they want to
		  me.stopListening
		  
		  ' Give a visual indication to the user that they
		  ' can restart the server if they'd like
		  'Window1.PushButton1.caption = "Start Server"
		  'MsgBox str(ErrorCode)
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumSocketsConnected"
			Visible=true
			Group="Behavior"
			InitialValue="10"
			Type="Integer"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumSocketsAvailable"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
