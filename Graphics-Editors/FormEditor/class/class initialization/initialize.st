initialize
	"FormEditor initialize."

	FlashCursor _ false.
	self setKeyboardMap.
	YellowButtonMenu _ PopUpMenu labels: 'accept
cancel'.
	YellowButtonMessages _ #(accept cancel)

	"FormEditor initialize"
