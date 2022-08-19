lineIndexOfCharacterIndex: characterIndex
	"line index for a given characterIndex"
	1 to: lastLine do:
		[:lineIndex |
		(lines at: lineIndex) last >= characterIndex ifTrue: [^lineIndex]].
	^lastLine
