favoriteStringHolderView
	| aStringHolderView message |
	message _ self longishString.
	aStringHolderView _ StringHolderView container: (StringHolder new contents: message).
	aStringHolderView window: (0@0 extent: 300@200).
	aStringHolderView translateBy: 100@250.
	aStringHolderView display.
	^aStringHolderView
