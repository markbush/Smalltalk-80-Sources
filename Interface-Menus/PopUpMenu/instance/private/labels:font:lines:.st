labels: aString font: aFont lines: anArray
	| style labelPara |
	labelString _ aString.
	font _ aFont.
	style _ TextStyle fontArray: (Array with: font).
	style alignment: 2.  "centered"
	style gridForFont: 1 withLead: 0.
	labelPara _ Paragraph withText: aString asText style: style.
	lineArray _ anArray.
	form _ labelPara asForm.
	frame _ Quadrangle new.
	frame region: (labelPara compositionRectangle expandBy: 2).
	frame borderWidth: (1@1 corner: 3@3).
	lineArray == nil
	  ifFalse:
		[lineArray do:
			[:line |
			form fill: (0 @ (line * font height) extent: (frame width @ 1))
				mask: Form black]].
	marker _ frame inside topLeft extent: frame inside width @ labelPara lineGrid.
	selection _ 0
