changeTool: aCharacter
	"Changes the value of the instance variable tool to be the tool
	corresponding to aCharacter. Typically sent from a Switch in a
	FormMenuView. "

	previousTool _ tool.
	tool _ self selectTool: aCharacter.
	(#(singleCopy repeatCopy line curve block) includes: tool)
		ifFalse:
			[self perform: tool]
