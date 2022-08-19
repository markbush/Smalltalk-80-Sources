changeText: aText
	"The paragraph to be edited is changed to aText."

	paragraph text: aText.
	self resetState.
	self selectWithoutComp: paragraph text size + 1.
	self selectAndScroll.
	paragraph displayOn: Display.
	self deselect
