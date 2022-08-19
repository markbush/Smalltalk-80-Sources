acceptText: aText from: aController
	| val |
	object class == CompiledMethod
		ifTrue: [^false].
	field == nil ifTrue: [^false].
	val _ self evaluateText: aText string from: aController ifFail: [^ false].
	field first isLetter
		ifTrue: [object instVarAt: self fieldIndex put: val]
		ifFalse: [object basicAt: self fieldIndex put: val].
	self changed: #text.
	^ true
