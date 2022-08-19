changeGridding
	"Allow the user to change the values of the horizontal and(or) vertical grid
	modules.  Does not change the primary tool."

	| response gridInteger |
	response _
		self promptRequest: 'Current horizontal gridding is: '
						, togglegrid x printString
						, '.
Type new horizontal gridding.'.
	response isEmpty
		ifFalse:
			[gridInteger _ Integer readFromString: response.
			togglegrid x: ((gridInteger max: 1) min: Display extent x)].
	response _
		self promptRequest: 'Current vertical gridding is: '
						, togglegrid y printString
						, '.
Type new vertical gridding.'.
	response isEmpty
		ifFalse:
			[gridInteger _ Integer readFromString: response.
			togglegrid y: ((gridInteger max: 1) min: Display extent y)].
	xgridOn ifTrue: [grid x: togglegrid x].
	ygridOn ifTrue: [grid y: togglegrid y].
	tool _ previousTool
