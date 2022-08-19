renameClass
	| aString newName cleanString |
	self changeRequest ifFalse: [^self].
	aString _ self prompt: 'Enter new ClassName' initially: self selectedClass name.
	aString isEmpty ifTrue: [^self].
	cleanString _ aString select: [:char | char isAlphaNumeric].
	cleanString = aString
		ifFalse: [aString _ cleanString.
				(self confirm: 'Invalid characters in class name.  Should I use ', aString, '?')
					ifFalse: [^self]].
	aString first isUppercase
		ifFalse: [aString at: 1 put: (aString at: 1) asUppercase.
				(self confirm: 'Class names must be capitalized.  Should I use ', aString, '?')
					ifFalse: [^self]].
	newName _ aString asSymbol.
	aString = self selectedClass name
		ifFalse:
			[self selectedClass rename: newName.
		self newClassList: newName.
		Transcript cr; show: 'Searching for references to this class...'.
		self browseClassReferences]
