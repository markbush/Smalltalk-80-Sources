getImagePrefix
	"Prompt the user for a snapshot file name.  Persist until a legal name is supplied."

	| default newPrefix prompt |
	SourceFiles == nil
		ifTrue: [^'snapshot'].
	prompt _
'Enter name for image file:'.
	default _ 'snapshot'.
	newPrefix _ ''.
	FillInTheBlank
		request: prompt
		displayAt: Sensor cursorPoint
		centered: true
		action: [:newPrefix | ]
		initialAnswer: default.

	[newPrefix isEmpty or:
			[(Disk isLegalFileName: newPrefix, '.changes') not]] whileTrue:
		[newPrefix isEmpty ifTrue: [^newPrefix].
		FillInTheBlank
			request: prompt
			displayAt: Sensor cursorPoint
			centered: true
			action: [:newPrefix | ]
			initialAnswer: default.
		(newPrefix size > 2 and:
			[(newPrefix copyFrom: newPrefix size-2 to: newPrefix size) sameAs: '.im'])
				ifTrue: [newPrefix _ newPrefix copyFrom: 1 to: newPrefix size-3].
		prompt _
'Illegal file name: ', newPrefix, '
Enter name for image file:'.
		default _ Disk checkName: newPrefix, '.changes' fixErrors: true.
		default _ default copyFrom: 1 to: default size - 8].

	^newPrefix
