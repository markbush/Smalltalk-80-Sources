acceptText: aText from: aController
	| val |
	(field == nil) | (field = 'self') ifTrue: [^ false].
	val _ self evaluateText: aText string from: aController ifFail: [^ false].
	object tempAt: self fieldIndex put: val.
	self changed: #text.
	^ true
