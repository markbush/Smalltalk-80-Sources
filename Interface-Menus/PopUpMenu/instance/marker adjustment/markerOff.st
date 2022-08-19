markerOff
	"No item is selected.  Reverse the highlight if any item has been marked as selected."
	selection ~= 0
		ifTrue:
			[Display reverse: marker.
			selection _ 0]
