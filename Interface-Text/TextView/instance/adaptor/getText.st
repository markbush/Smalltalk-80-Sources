getText
	| text |
	partMsg == nil ifTrue: [^ Text new].
	text _ model perform: partMsg.
	text == nil ifTrue: [^ Text new].
	^ text
