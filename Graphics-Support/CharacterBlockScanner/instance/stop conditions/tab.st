tab
	"Handle leading and internal tabs in a justified line.  Leading tabs are considered legal and should be reflected on the display gracefully.  Internal tabs (when the line is justified) are considered at the very best a misguided use of the character, and are reflected on the display the best we can."


	| leadingTab currentX |
	currentX _ destX.
	leadingTab _ true.
	(line first to: lastIndex)
		do: [:index | (text at: index) = Space ifTrue: [leadingTab _ false]].
	(textStyle alignment ~= Justified or: [leadingTab])
		ifTrue: [currentX _
					textStyle
						nextTabXFrom: currentX
						leftMargin: leftMargin
						rightMargin: rightMargin]
		ifFalse: [currentX _
					currentX + (textStyle tabWidth -
						(line justifiedTabDeltaFor: spaceCount)) max: destX].
	lastSpaceOrTabExtent _ lastCharacterExtent copy.
	lastSpaceOrTabExtent x: (currentX - destX max: 0).
	currentX >= characterPoint x
		ifTrue:
			[lastCharacterExtent _ lastSpaceOrTabExtent copy.
			^self crossedX].
	destX _ currentX.
	lastIndex _ lastIndex + 1.
	^false
