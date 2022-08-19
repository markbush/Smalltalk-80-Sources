newText: aText
	aText == nil ifTrue: [^ self newText: Text new].
	self controller paragraph text: aText.
	self controller scrollToTop; resetState
