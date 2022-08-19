follow: locationBlock while: durationBlock
	"This method moves an image around on the Display.
	It restores the background continuously without causing flashing.
	LocationBlock supplies each new location, and durationBlock supplies
	true to continue, and then false to stop.
	See (or run) OpaqueForm example."

	| location background |
	location _ locationBlock value.
	background _ self backgroundAt: location.
	self displayAt: location.
	[durationBlock value] whileTrue:
		[self moveTo: locationBlock value restoring: background].
	background display
