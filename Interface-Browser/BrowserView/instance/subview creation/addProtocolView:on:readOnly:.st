addProtocolView: area on: aBrowser readOnly: RO
	self addSubView:
		(SelectionInListView on: aBrowser printItems: false oneItem: RO
			aspect: #protocol change: #protocol: list: #protocolList
			menu: #protocolMenu initialSelection: #protocol)
		in: area borderWidth: 1
