acceptMethod: aText from: aController
	| newSelector |
	newSelector _ self selectedClass
				compile: aText
				classified: protocol
				notifying: aController.
	newSelector == nil ifTrue: [^false].
	newSelector == selector
		ifFalse: [self newSelectorList: newSelector].
	^true
