quit
	| menu index imagePrefix |
	menu _ PopUpMenu labels:
' Save, then quit
 Quit, without saving
 Continue '
		lines: #(1 2).
	index _ menu startUp.
	index = 1
		ifTrue:
			[imagePrefix _ Smalltalk getImagePrefix.
			imagePrefix isEmpty ifTrue: [^self].
			Smalltalk saveAs: imagePrefix thenQuit: true].
	index = 2 ifTrue: [Smalltalk quit]
