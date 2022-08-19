scheduled: aController from: aProcess
	activeControllerProcess==aProcess
		ifTrue:
			[activeController ~~ nil
					ifTrue: [activeController controlTerminate].
			aController centerCursorInView.
			self activeController: aController]
		ifFalse:
			[aController view display]
