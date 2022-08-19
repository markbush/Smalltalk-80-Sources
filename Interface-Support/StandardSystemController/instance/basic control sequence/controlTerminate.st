controlTerminate
	status == #closed
		ifTrue:
			[view ~~ nil ifTrue: [view release].
			ScheduledControllers unschedule: self.
			^self].
	status == #inactive
		ifTrue:
			[view deEmphasize.
			ScheduledControllers pullBottomToTop.
			^self].
	view deEmphasize
