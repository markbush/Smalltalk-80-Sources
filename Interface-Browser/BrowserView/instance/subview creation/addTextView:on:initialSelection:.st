addTextView: area on: aBrowser initialSelection: sel
	self addSubView:
			(CodeView on: aBrowser aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: sel)
		in: area borderWidth: 1
