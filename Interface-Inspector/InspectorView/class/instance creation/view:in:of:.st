view: anInspector in: area of: superView
	"Create proportioned List and Code views on anInspector in area of superView"

	| mid |
	mid _ area left + (area width * 0.3).
	superView addSubView:
		(SelectionInListView
			on: anInspector printItems: anInspector printItems
			oneItem: false aspect: #field change: #field: list: #fieldList
			menu: #fieldMenu initialSelection: #field)
		in: (area copy right: mid) borderWidth: 1.
	superView addSubView: (CodeView on: anInspector aspect: #text
			change: #acceptText:from:
			menu: #textMenu initialSelection: nil)
		in: (area copy left: mid) borderWidth: 1
