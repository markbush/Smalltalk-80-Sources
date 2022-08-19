initialize
	"The Bit Editor is the only controller to override the use of the blue button with
	a different pop-up menu.  Initialize this menu."
	YellowButtonMenu _ PopUpMenu labels:
'accept
cancel'.
	YellowButtonMessages _ #(accept cancel )

	"BitEditor initialize."
