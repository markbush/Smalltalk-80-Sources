addCategoryView: area on: aBrowser readOnly: RO
	self addSubView:
		(SelectionInListView on: aBrowser printItems: false oneItem: RO
			aspect: #category change: #category: list: #categoryList
			menu: #categoryMenu initialSelection: #category)
		in: area borderWidth: 1
