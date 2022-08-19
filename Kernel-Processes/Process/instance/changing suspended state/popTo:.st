popTo: aContext
	"Replace the suspendedContext with aContext, releasing all contexts
	between the currently suspendedContext and it."

	self == Processor activeProcess
		ifTrue: [^self error: 'The active process cannot pop contexts'].
	suspendedContext releaseTo: aContext.
	suspendedContext _ aContext
