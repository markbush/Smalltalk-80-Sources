openFullViewOn: aDebugger label: aString
	"Answer an instance of me on the model, aDebugger.
	The label is aString.  Do not terminate the current active process."

	| topView |
	aDebugger openInspectors.
	topView _ BrowserView model: aDebugger label: aString minimumSize: 300@230.
	topView addSubView:
			(SelectionInListView on: aDebugger printItems: true oneItem: false
				aspect: #context change: #context: list: #contextList
				menu: #contextMenu initialSelection: #context)
		in: (0@0 extent: 1@0.2) borderWidth: 1.
	topView addSubView:
			(CodeView on: aDebugger aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: nil)
		in: (0@0.2 extent: 1@0.6) borderWidth: 1.
	InspectorView view: aDebugger receiverInspector
		in: (0@0.8 extent: 0.5@0.2) of: topView.
	InspectorView view: aDebugger contextInspector
		in: (0.5@0.8 extent: 0.5@0.2) of: topView.
	topView controller openNoTerminate.
	^topView
