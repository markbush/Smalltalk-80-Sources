redButtonMenu: aSystemMenu redButtonMessages: anArray
	"Initialize the pop-up menu that should appear when the user presses
	the red mouse button to be aSystemMenu.  The corresponding messages
	that should be sent are listed in the array, anArray."

	redButtonMenu release.
	redButtonMenu _ aSystemMenu.
	redButtonMessages _ anArray
