resetFont
	"Mainly to allow the stop condition crossedX to be shared by display and printer media."
	^ textStyle fontAt: (text emphasisAt: spaceIndex)
