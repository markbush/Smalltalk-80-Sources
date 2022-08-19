interruptName: title
	"Create a Notifier on the active scheduling process whose label is title
	Make the Notifier the active controller."

	| newActiveController suspendingList |
	suspendingList _ activeControllerProcess suspendingList.
	suspendingList isNil
		ifTrue: [activeControllerProcess==Processor activeProcess
						ifTrue: [activeControllerProcess suspend]]
		ifFalse: [suspendingList remove: activeControllerProcess.
				 activeControllerProcess offList].
	newActiveController _
		(NotifierView openInterrupt: title
					  onProcess: activeControllerProcess)
							controller.
	activeController ~~ nil
			ifTrue: [activeController controlTerminate].
	newActiveController centerCursorInView.
	self activeController: newActiveController
