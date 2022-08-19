example1
	"Creates a system view with a paragraph editor in it"

	| topView aDisplayTextView |
	aDisplayTextView _ DisplayTextView new model: 'test string' asDisplayText.
	aDisplayTextView insideColor: Form white.
	aDisplayTextView borderWidth: 2.
	topView _ StandardSystemView new.
	topView label: 'Text Editor'.
	topView addSubView: aDisplayTextView.
	topView controller open

	"DisplayTextView example1."
