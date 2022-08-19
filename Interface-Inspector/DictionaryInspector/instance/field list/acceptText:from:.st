acceptText: aText from: aController
	| val |
	field == nil ifTrue: [^ false].
	val _ self evaluateText: aText string from: aController ifFail: [^ false].
	object at: field put: val.
	self changed: #text.
	^ true
