readKeyboard
	"Key struck on the keyboard.  Find out which one and, if special,
	carry out the associated special action.  Otherwise, add the character to
	the stream of characters.
	This also includes fast-echo: while the user is typing, it tries to keep up, even if not
	exactly correctly.  When the user pauses, it fixes things up."

	| typeAhead nextCharacter line font x w delay expired charType firstWasCR |
	beginTypeInBlock == nil
		ifTrue:
			[UndoSelection _ self selection.
			beginTypeInBlock _ startBlock copy].
	self deselect.

	"Prepare for fast-echo loop"
	typeAhead _ WriteStream on: (String new: 128).
	line _ (startBlock expandBy: 9999@0) intersect: paragraph visibleRectangle.
	startBlock = stopBlock
		ifTrue:		"Only do fast type-in if null selection"
			[x _ startBlock left.
			font _ paragraph textStyle fontAt: emphasisHere.
			firstWasCR _ sensor keyboardPeek = Character cr.

			"Fast echo loop, accumulates chars in typeAhead stream"
			[delay _ 100.  "wait for small typing pauses:"
			[sensor keyboardPressed | (delay=0)]
				whileFalse: [delay _ delay - 1].
			sensor keyboardPressed and:
				[((nextCharacter _ sensor keyboardPeek) = Character cr) == firstWasCR]]

				whileTrue:
					[charType _ Keyboard at: nextCharacter asciiValue + 1.
					(self perform: charType with: typeAhead)
						ifTrue: [^self].
					w _ font widthOf: nextCharacter.
					(charType = #normalCharacter:) & (x+w <= line right)
						ifTrue:
							[Display
								copy: ((x+w) @ line top corner: line corner)
								from: x @ line top
								in: Display rule: Form over.
							(font characterForm: nextCharacter)
								displayAt:
									x @ (line top + paragraph textStyle baseline - font ascent).
							x _ x+w]].	"end fast echo loop"
				]
			ifFalse:		"Do normal behavior if non-null selection"
				[nextCharacter _ sensor keyboardPeek.
				charType _ Keyboard at: nextCharacter asciiValue + 1.
				(self perform: charType with: typeAhead)
						ifTrue: [^self]].
	"Now properly paste and display accumulated characters"
	self replaceSelectionWith:
		(Text string: typeAhead contents emphasis: emphasisHere).
	startBlock _ stopBlock copy.
	self selectAndScroll
