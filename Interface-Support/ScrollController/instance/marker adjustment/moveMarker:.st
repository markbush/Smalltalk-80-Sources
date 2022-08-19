moveMarker: anInteger
	"Update the marker so that is is translated by an amount corresponding to
	a distance of anInteger, constrained within the boundaries of the scroll bar."

	Display fill: marker mask: scrollBar insideColor.
	marker _ marker translateBy: 0 @
				((anInteger min: scrollBar inside bottom - marker bottom) max:
					scrollBar inside top - marker top).
	marker displayOn: Display
