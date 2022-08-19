fileInForm
	"Ask the user for a file name and then recalls the Form in that file as the
	current source Form (form).  Does not change the tool."

	| inName directory localName trying newForm |
	trying _ true.
	[trying] whileTrue:
		[inName _ self promptRequest: 'type a name for recalling a source Form . . . '.
		directory _ FileDirectory directoryFromName: inName setFileName: [:localName].
		(((directory isLegalFileName: localName)
			and: [directory includesKey: localName])
				and: [(newForm  _ Form readFrom: inName) ~~ nil])
				ifTrue: [trying _ false]
				ifFalse: [trying _ BinaryChoice message: 'File name illegal, or file not found, or file not valid form file.
Try again?']].
	newForm ~~ nil ifTrue: [form _ newForm].
	tool _ previousTool.
