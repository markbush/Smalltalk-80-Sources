open: aStringHolder label: aString
	"Create a StandardSystemView of the model, aStringHolder, as viewed by an instance of me.
	The label of the view is aString."
	| aStringHolderView topView |
	aStringHolderView _ self container: aStringHolder.
	topView _ StandardSystemView new.
	topView borderWidth: 1.
	topView model: aStringHolderView model.
	topView addSubView: aStringHolderView.
	topView label: aString.
	topView minimumSize: 200 @ 150.
	topView controller open
