fileOutForm
	"Ask the user for a file name and then save the current source form (form)
	under that name.  Does not change the tool."

	| outName answer directory localName trying |
	trying _ true.
	[trying] whileTrue:
		[outName _ self promptRequest: 'type a name for saving the source Form . . . '.
		directory _ FileDirectory directoryFromName: outName setFileName: [:localName].
		(directory isLegalFileName: outName)
			ifTrue:
				[(directory includesKey: localName)
					ifTrue: [(BinaryChoice message: 'writing over old file--okay?')
								ifTrue: [form writeOn: outName]]
					ifFalse: [form writeOn: outName].
				trying _ false]
			ifFalse:
				[trying _ BinaryChoice message: 'Bad file name, try again?']].
	tool _ previousTool.
