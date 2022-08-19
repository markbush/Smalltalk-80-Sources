instanceVariablesNotReferenced
	"Return a list of classes and instance variables defined in, but not used in that class
	Smalltalk instanceVariablesNotReferenced"

	| aStream |
	aStream _ WriteStream on: (Array new: 50).
	Smalltalk allBehaviorsDo:
		[:class |
		class instVarNames do:
			[:instVarName |
			(class whichSelectorsAccess: instVarName) size = 0
				ifTrue: [aStream nextPut: class name, ' ', instVarName]]].
	^aStream contents
