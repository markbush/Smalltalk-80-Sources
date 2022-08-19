displayOutputNamed: name
	"Create a window on the display to view the contents of the named output.
	Does not allow editing of the output file or stream."

	| output contents |
	output _ self outputNamed: name.
	contents _ self streamsRatherThanFiles
					ifTrue: [output contents]
					ifFalse: [output contentsOfEntireFile].
	StringHolderView
		open: (StringHolder new contents: contents)
		label: name
