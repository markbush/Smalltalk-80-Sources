openOn: aChangeList
	"schedule a change browser"
	| topView aChangeListView aChangeView alignPoint |

	topView _ StandardSystemView new model: aChangeList.
	topView label: aChangeList listName.
	topView minimumSize: 180@180.

	aChangeListView _ self new.
	aChangeListView model: aChangeList.
	aChangeListView window: (0@0 extent: 180@120).
	aChangeListView insideColor: Form white.
	aChangeListView borderWidthLeft: 2 right: 2 top: 2 bottom: 0.
	topView addSubView: aChangeListView.

	alignPoint _ self
		openSwitches:
			#(	('show file' showingField: (1) switchField:perform: (1 fileName) 90)
				('show category' showingField: (2) switchField:perform: (2 category) 90)
			)
		topView: topView
		at: aChangeListView viewport bottomLeft
		model: aChangeList.
	alignPoint _ self
		openSwitches:
			#(	(file hasFilter: (1) switchFilter:perform: (1 file) 30)
				(type hasFilter: (2) switchFilter:perform: (2 class) 30)
				(class hasFilter: (3) switchFilter:perform: (3 className) 30)
				(category hasFilter: (4) switchFilter:perform: (4 category) 30)
				(selector hasFilter: (5) switchFilter:perform: (5 selector) 30)
				(same hasFilter: (6) switchFilter:perform: (6 values) 30)
			)
		topView: topView
		at: alignPoint
		model: aChangeList.

	aChangeView _ StringHolderView new.
	aChangeView model: aChangeList.
	aChangeView controller: ChangeController new.
	aChangeView window: (0@0 extent: 180@240).
	aChangeView insideColor: Form white.
	aChangeView borderWidthLeft: 2 right: 2 top: 2 bottom: 2.
	topView
		addSubView: aChangeView
		align: aChangeView viewport topLeft
		with: alignPoint.

	topView controller open.
