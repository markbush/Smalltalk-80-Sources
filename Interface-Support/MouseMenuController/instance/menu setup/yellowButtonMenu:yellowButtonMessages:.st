yellowButtonMenu: aSystemMenu yellowButtonMessages: anArray
	"Initialize the pop-up menu that should appear when the user presses
	the yellow mouse button to be aSystemMenu.  The corresponding messages
	that should be sent are listed in the array, anArray."

	yellowButtonMenu release.
	yellowButtonMenu _ aSystemMenu.
	yellowButtonMessages _ anArray
