addMethodView: area on: aBrowser readOnly: RO
	self addSubView:
		(SelectionInListView on: aBrowser printItems: false oneItem: RO
			aspect: #methodName change: #methodName: list: #methodList
			menu: #methodMenu initialSelection: #methodName)
		in: area borderWidth: 1
