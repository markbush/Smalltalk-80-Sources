openContext: haltContext label: aString contents: contentsString
	"Create and schedule an instance of me viewing a Debugger on haltContext.
	The view will be labeled with aString, and shows a short sender stack."

	| displayPoint |
	ErrorRecursion
		ifTrue:
			[ErrorRecursion _ false.
			self primitiveError: aString].
	ErrorRecursion _ true.
	displayPoint _
		ScheduledControllers activeController == nil
			ifTrue: [Display boundingBox center]
			ifFalse: [ScheduledControllers activeController view displayBox center].
	self openDebugger: (Debugger context: haltContext)
		contents: contentsString
		label: aString
		displayAt: displayPoint.
	ErrorRecursion _ false.
	Processor activeProcess suspend
