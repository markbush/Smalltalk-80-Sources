block
	"Allow the user to fill a rectangle with the gray tone and mode
	currently selected."

	| rectangle |
	rectangle _ Rectangle fromUser: grid.
	rectangle isNil
		ifFalse: [Display
					fill: (rectangle intersect: view insetDisplayBox)
					rule: mode
					mask: color]
