addClassView: area on: aBrowser readOnly: RO
	self addSubView:
		(SelectionInListView on: aBrowser printItems: false oneItem: RO
			aspect: #className change: #className: list: #classList
			menu: #classMenu initialSelection: #className)
		in: area borderWidth: 1
