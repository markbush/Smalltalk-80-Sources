release
	"Breaks the cycle between the receiver and its view. It is usually not
	necessary to send release provided the receiver's view has been properly
	released independently."

	super release.
	view ~= nil
		ifTrue:
			[view controller: nil.
			view _ nil]
