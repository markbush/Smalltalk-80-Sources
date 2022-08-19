backgroundAt: location
	"Answer a Form containing the contents of the Display which will be altered
	if I am displayed at location.  The Form remembers location in its offset"

	^ (Form fromDisplay: (location extent: self extent)) offset: location
