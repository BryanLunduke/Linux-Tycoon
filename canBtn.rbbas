#tag Class
Protected Class canBtn
Inherits canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  if me.Enabled = true then
		    DrawMouseDown
		    Return true
		  else
		    DrawDisabled
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  if me.Enabled = false then
		    DrawDisabled
		  else
		    DrawHover
		  end if
		  
		  isMouseOver = true
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  if me.Enabled = false then
		    DrawDisabled
		  else
		    DrawNormal
		  end if
		  
		  isMouseOver = false
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  if me.Enabled = false then
		    DrawDisabled
		  else
		    DrawHover
		    Clicked
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if isMouseOver = false then
		    if me.Enabled = false then
		      if LastDrawn = "Disabled" then
		        
		      else
		        DrawDisabled
		      end if
		    else
		      if LastDrawn = "Disabled" then
		        DrawNormal
		      end if
		    end if
		  end if
		  
		  if TheGraphic <> nil then
		    g.DrawPicture TheGraphic,0,0
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  'Super.Constructor
		  me.Enabled = true
		  isMouseOver = false
		  
		  BackgroundColor = rgb(89,131,192)
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
		Sub DrawDisabled()
		  LastDrawn = "Disabled"
		  TheGraphic = new picture(me.Width, me.Height, 32)
		  
		  // Draw the background
		  TheGraphic.Graphics.ForeColor = DisabledBackgroundColor
		  TheGraphic.Graphics.FillRect 0,0,me.Width, me.Height
		  
		  // Draw the border
		  TheGraphic.Graphics.ForeColor = BorderColor
		  TheGraphic.Graphics.DrawRect 0,0,me.Width, me.Height
		  
		  // Draw the Text
		  TheGraphic.Graphics.ForeColor = DisabledTextColor
		  TheGraphic.Graphics.TextSize = 12
		  dim x as integer
		  dim y as integer
		  dim strWidth as integer
		  dim strHeight as integer
		  strWidth = TheGraphic.Graphics.StringWidth(Text)
		  strHeight = TheGraphic.Graphics.StringHeight(Text, me.Width)
		  x = (me.Width / 2) - (strWidth / 2)
		  y = ((me.Height-strHeight) / 2) + TheGraphic.Graphics.TextAscent
		  TheGraphic.Graphics.DrawString Text, x, y
		  
		  if me.graphics <> nil then
		    if TheGraphic <> nil then
		      me.graphics.DrawPicture TheGraphic,0,0
		      'me.Backdrop = TheGraphic
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawHover()
		  LastDrawn = "Hover"
		  TheGraphic = new picture(me.Width, me.Height, 32)
		  
		  // Draw the background
		  TheGraphic.Graphics.ForeColor = MouseOverColor
		  TheGraphic.Graphics.FillRect 0,0,me.Width, me.Height
		  
		  // Draw the border
		  TheGraphic.Graphics.ForeColor = BorderColor
		  TheGraphic.Graphics.DrawRect 0,0,me.Width, me.Height
		  
		  // Draw the Text
		  TheGraphic.Graphics.ForeColor = TextColor
		  TheGraphic.Graphics.TextSize = 12
		  dim x as integer
		  dim y as integer
		  dim strWidth as integer
		  dim strHeight as integer
		  strWidth = TheGraphic.Graphics.StringWidth(Text)
		  strHeight = TheGraphic.Graphics.StringHeight(Text, me.Width)
		  x = (me.Width / 2) - (strWidth / 2)
		  y = ((me.Height-strHeight) / 2) + TheGraphic.Graphics.TextAscent
		  TheGraphic.Graphics.DrawString Text, x, y
		  
		  
		  me.graphics.DrawPicture TheGraphic,0,0
		  'me.Backdrop = TheGraphic
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawMouseDown()
		  LastDrawn = "MouseDown"
		  TheGraphic = new picture(me.Width, me.Height, 32)
		  
		  // Draw the background
		  TheGraphic.Graphics.ForeColor = MouseDownColor
		  TheGraphic.Graphics.FillRect 0,0,me.Width, me.Height
		  
		  // Draw the border
		  TheGraphic.Graphics.ForeColor = BorderColor
		  TheGraphic.Graphics.DrawRect 0,0,me.Width, me.Height
		  
		  // Draw the Text
		  TheGraphic.Graphics.ForeColor = TextColor
		  TheGraphic.Graphics.TextSize = 12
		  dim x as integer
		  dim y as integer
		  dim strWidth as integer
		  dim strHeight as integer
		  strWidth = TheGraphic.Graphics.StringWidth(Text)
		  strHeight = TheGraphic.Graphics.StringHeight(Text, me.Width)
		  x = (me.Width / 2) - (strWidth / 2)
		  y = ((me.Height-strHeight) / 2) + TheGraphic.Graphics.TextAscent
		  TheGraphic.Graphics.DrawString Text, x, y
		  
		  me.graphics.DrawPicture TheGraphic,0,0
		  'me.Backdrop = TheGraphic
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawNormal()
		  LastDrawn = "Normal"
		  if me.Width > 0 and me.Height > 0 then
		    TheGraphic = new picture(me.Width, me.Height, 32)
		    
		    // Draw the background
		    TheGraphic.Graphics.ForeColor = BackgroundColor
		    TheGraphic.Graphics.FillRect 0,0,me.Width, me.Height
		    
		    // Draw the border
		    TheGraphic.Graphics.ForeColor = BorderColor
		    TheGraphic.Graphics.DrawRect 0,0,me.Width, me.Height
		    
		    // Draw the Text
		    TheGraphic.Graphics.ForeColor = TextColor
		    TheGraphic.Graphics.TextSize = 12
		    dim x as integer
		    dim y as integer
		    dim strWidth as integer
		    dim strHeight as integer
		    strWidth = TheGraphic.Graphics.StringWidth(Text)
		    strHeight = TheGraphic.Graphics.StringHeight(Text, me.Width)
		    x = (me.Width / 2) - (strWidth / 2)
		    y = ((me.Height-strHeight) / 2) + TheGraphic.Graphics.TextAscent
		    TheGraphic.Graphics.DrawString Text, x, y
		    
		    'if me.graphics <> nil then
		    'if TheGraphic <> nil then
		    if TheGraphic <> nil then
		      if me <> nil then
		        me.Invalidate
		        'if me.graphics <> nil then
		        'me.graphics.DrawPicture TheGraphic,0,0
		        'end if
		      end if
		    end if
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
		myTimer As timecanBtn
	#tag EndProperty

	#tag Property, Flags = &h0
		Text As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TextColor As color
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
			Name="TextColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
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
