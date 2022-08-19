tab
	"This awfulness attempts to handle leading and internal tabs in a justified line.  Leading tabs are considered legal and should be reflected on the display gracefully.  Internal tabs (when the line is justified) are considered at the very best a misguided use of the character, and are reflected on the display the best we can."

	| leadingTab |
	leadingTab _ true.
	(line first to: lastIndex) do:
		[:index | (text at: index) = Space ifTrue: [leadingTab _ false]].
	(textStyle alignment ~= Justified or: [leadingTab])
		ifTrue: 	["if a leading tab, just like a tab on a non-jusitified line"
				destX _ textStyle
						nextTabXFrom: destX
						leftMargin: leftMargin
						rightMargin: rightMargin]
		ifFalse:	["otherwise"
				destX _ destX +
						(textStyle tabWidth - (line justifiedTabDeltaFor: spaceCount))
							max: destX].
	lastIndex _ lastIndex + 1.
	^false
