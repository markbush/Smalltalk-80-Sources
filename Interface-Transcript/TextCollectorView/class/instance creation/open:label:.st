open: aTextCollector label: aString
	"Answer an instance of me on the argument, aTextCollector.  The
	label of the StandardSystemView should be aString."

	| topView aView |
	topView _ StandardSystemView new.
	topView model: aTextCollector.
	topView label: aString.
	topView minimumSize: 160 @ 120.
	aView _ self new model: aTextCollector.
	aView insideColor: Form white.
	aView borderWidth: 1.
	topView borderWidth: 1.
	topView addSubView: aView.
	topView controller open
