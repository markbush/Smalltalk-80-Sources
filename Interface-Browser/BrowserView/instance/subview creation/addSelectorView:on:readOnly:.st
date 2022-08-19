addSelectorView: area on: aBrowser readOnly: RO
	self addSubView:
		(SelectionInListView on: aBrowser printItems: false oneItem: RO
			aspect: #selector change: #selector: list: #selectorList
			menu: #selectorMenu initialSelection: #selector)
		in: area borderWidth: 1
