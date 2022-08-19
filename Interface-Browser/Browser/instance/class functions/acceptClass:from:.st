acceptClass: aText from: aController
	| oldClass class |
	oldClass _ className == nil ifTrue: [Object] ifFalse: [self selectedClass].
	class _ oldClass subclassDefinerClass
				evaluate: aText string
				notifying: aController
				logged: true.
	(class isKindOf: Behavior)
		ifTrue: [self newClassList: class name.  ^true]
		ifFalse: [^false]
