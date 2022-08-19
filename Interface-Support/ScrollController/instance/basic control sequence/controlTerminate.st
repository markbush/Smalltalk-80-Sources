controlTerminate
	super controlTerminate.
	savedArea notNil
		ifTrue:
			[savedArea displayOn: Display at: scrollBar topLeft.
			savedArea_ nil]
