lineIndexOfTop: top
	"line index at a given top y"

	^(top - compositionRectangle top // textStyle lineGrid + 1 max: 1)
		min: lastLine
