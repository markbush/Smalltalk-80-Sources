copyReplaceAll: oldSubstring with: newSubstring
	"Answer a copy of the receiver in which all occurrances of oldSubstring have
	been replaced by newSubstring."

	| aString startSearch currentIndex |
	aString _ self.
	startSearch _ 1.
	[(currentIndex _ aString indexOfSubCollection: oldSubstring startingAt: startSearch)
			 > 0]
		whileTrue:
			[aString _ aString
						copyReplaceFrom: currentIndex
						to: currentIndex + oldSubstring size - 1
						with: newSubstring.
			startSearch _ currentIndex + newSubstring size].
	^aString
	"'How noww brown cowow?' copyReplaceAll: 'ow' with: 'ello'"
