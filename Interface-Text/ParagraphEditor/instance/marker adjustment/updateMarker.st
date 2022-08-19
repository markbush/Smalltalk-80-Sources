updateMarker
	"A variation of moveMarker--only redisplay the marker in the scrollbar
	if an actual change has occurred in the positioning of the paragraph."

	| newMarkerRegion |
	newMarkerRegion _ self computeMarkerRegion.
	newMarkerRegion extent ~= marker region extent
		ifTrue:
			[self markerRegion: newMarkerRegion.
			self moveMarker]
