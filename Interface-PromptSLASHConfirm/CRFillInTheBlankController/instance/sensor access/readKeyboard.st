readKeyboard
	"Copied from ParagraphEditor to gain access to carriage return termination--read a key that the user strikes on the keyboard."

	| typeAhead currentCharacter |
	self deselect.
	typeAhead _ WriteStream on: (String new: 128).
	beginTypeInBlock == nil
		ifTrue:
			[UndoSelection _ self selection.
			beginTypeInBlock _ startBlock copy].
	[sensor keyboardPressed]
		whileTrue:
			[currentCharacter _ sensor keyboardPeek.
			currentCharacter = Character cr ifTrue: [^self cr: typeAhead].
			(self perform: (Keyboard at: currentCharacter asciiValue + 1)
				 with: typeAhead)
				ifTrue: [^self]].
	self replaceSelectionWith:
		(Text string: typeAhead contents emphasis: emphasisHere).
	startBlock _ stopBlock copy.
	self selectAndScroll
