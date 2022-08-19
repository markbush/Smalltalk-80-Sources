openListBrowserOn: aCollection label: labelString initialSelection: sel
	"Create and schedule a Method List browser for the methods in aCollection.
	If the collection is empty, print -Nobody- in the System Transcript."
	| topView aBrowser label |
	aCollection isEmpty ifTrue: [^ Transcript cr; show: 'Nobody'].
	aBrowser _ MethodListBrowser new on: aCollection.
	label _ (labelString isKindOf: LookupKey)
				ifTrue: [labelString key]
				ifFalse: [labelString asString].
	topView _ self model: aBrowser label: label minimumSize: 300@100.
	topView
		addMethodView: (0@0 extent: 1.0@0.25) on: aBrowser readOnly: false;
		addTextView: (0@0.25 extent: 1@0.75) on: aBrowser initialSelection: sel.
	topView controller open
