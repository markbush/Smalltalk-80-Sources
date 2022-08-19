acceptPattern: aText from: aController
	"The text consists of file names and file name patterns separated by carriage returns.
	Patterns can include the characters * (any chars) and # (any single char).
	Make my new list be those file names on my directory which match the patterns."

	| testPattern readStream newList |
	Cursor execute showWhile:
		[myPattern _ aText string.
		readStream _ ReadStream on: myPattern.
		newList _ SortedCollection new.
		[readStream atEnd] whileFalse:
			[testPattern _ readStream upTo: Character cr. "get next name/pattern"
			testPattern last = $.
				ifTrue: [testPattern _ testPattern copyFrom: 1 to: testPattern size-1].
			(testPattern includes: $*) | (testPattern includes: $#)
				ifTrue: [newList addAll: (self filesMatching: testPattern)]
				ifFalse: [(self isLegalFileName: testPattern)
							ifTrue: [newList add: testPattern]]].
		list _ newList.
		list isEmpty
			ifTrue: [aController deselect; replaceSelectionWith: 'No matching files' asText; select].
		self changed: #fileName].
	^true
