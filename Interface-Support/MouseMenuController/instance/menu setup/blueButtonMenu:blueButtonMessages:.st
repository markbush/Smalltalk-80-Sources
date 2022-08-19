blueButtonMenu: aSystemMenu blueButtonMessages: anArray
	"Initialize the pop-up menu that should appear when the user presses
	the blue mouse button to be aSystemMenu.  The corresponding messages
	that should be sent are listed in the array, anArray."

	blueButtonMenu release.
	blueButtonMenu _ aSystemMenu.
	blueButtonMessages _ anArray
