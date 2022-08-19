markerRegion: aRectangle
	"Set the area defined by aRectangle as the marker.  Fill it with gray tone."

	Display fill: marker mask: scrollBar insideColor.
	marker region: aRectangle.
	marker _ marker align: marker topCenter with: scrollBar inside topCenter
