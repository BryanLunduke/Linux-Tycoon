#tag Class
Protected Class canLabel
Inherits canvas
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  
		  if TheGraphic <> nil then
		    g.DrawPicture TheGraphic,0,0
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  'Super.Constructor
		  
		  BackgroundColor = rgb(137,167,209)
		  BorderColor = rgb(60,107,173)
		  TextColor = rgb(255,255,255)
		  MouseOverColor = rgb(47, 92, 159)
		  MouseDownColor = rgb(35, 75, 140)
		  
		  DisabledBackgroundColor = rgb(59,101,162)
		  DisabledTextColor = rgb(200,200,200)
		  'TheGraphic = new picture(me.Width, me.Height, 32)
		  
		  'myTimer = new timecanBtn
		  'myTimer.myCanBtn = me
		  'myTimer.Period = 1000
		  'myTimer.Mode = 2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawNormal()
		  if me.Width > 0 and me.Height > 0 then
		    TheGraphic = new picture(me.Width, me.Height, 32)
		    
		    // Draw the background
		    'TheGraphic.Graphics.ForeColor = BackgroundColor
		    'TheGraphic.Graphics.FillRect 0,0,me.Width, me.Height
		    
		    dim repX as integer
		    dim repY as integer
		    dim iX as integer
		    dim iY as integer
		    
		    
		    // Draw Background Color
		    repX =  me.Width / Background.Width
		    repY = me.Height / Background.Height
		    
		    for iX = 0 to repX
		      for iY = 0 to repY
		        
		        TheGraphic.Graphics.DrawPicture Background,ix * Background.Width, iy * Background.Height
		        
		      next
		    next
		    
		    // Draw the border
		    'TheGraphic.Graphics.ForeColor = BorderColor
		    'TheGraphic.Graphics.DrawRect 0,0,me.Width, me.Height
		    
		    // Draw the Text
		    TheGraphic.Graphics.ForeColor = TextColor
		    TheGraphic.Graphics.TextSize = TextSize
		    
		    dim x as integer
		    dim y as integer
		    dim strWidth as integer
		    dim strHeight as integer
		    strWidth = TheGraphic.Graphics.StringWidth(Text)
		    strHeight = TheGraphic.Graphics.StringHeight(Text, me.Width)
		    if isMultiLine = false then
		      y = ((me.Height-strHeight) / 2) + TheGraphic.Graphics.TextAscent
		    else
		      y = TheGraphic.Graphics.TextAscent
		    end if
		    
		    if TextAlign = "Center" then
		      
		      x = (me.Width / 2) - (strWidth / 2)
		      
		    end if
		    
		    if TextAlign = "Left" then
		      
		      x = 1
		      
		    end if
		    
		    
		    if TextAlign = "Right" then
		      
		      x = me.Width - strWidth
		      
		    end if
		    
		    TheGraphic.Graphics.DrawString Text, x, y, me.Width
		    
		    'if me.graphics <> nil then
		    'if TheGraphic <> nil then
		    me.graphics.DrawPicture TheGraphic,0,0
		    'me.Backdrop = TheGraphic
		    'end if
		    'end if
		    
		  end if
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Clicked()
	#tag EndHook


	#tag Property, Flags = &h0
		BackgroundColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		BorderColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		DisabledBackgroundColor As color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		DisabledTextColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		isMouseOver As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		isMultiLine As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		LastDrawn As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MouseDownColor As color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		MouseOverColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		myEnabled As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		mytext As String
	#tag EndProperty

	#tag Property, Flags = &h0
		myTimer As timecanBtn
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mytext
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mytext = value
			  DrawNormal
			End Set
		#tag EndSetter
		Text As string
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		TextAlign As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TextColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		TextSize As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TheGraphic As Picture
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisabledBackgroundColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisabledTextColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isMouseOver"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isMultiLine"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastDrawn"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MouseDownColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MouseOverColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="myEnabled"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mytext"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlign"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TheGraphic"
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="canvas"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
