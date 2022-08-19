model: aDebugger
	"Intercept to possible enable spelling correction."

	super model: aDebugger.
	model interruptedContext selector == #doesNotUnderstand: ifTrue:
		[self yellowButtonMenu: (PopUpMenu labels:
'proceed
debug
correct' lines: #(2))
			yellowButtonMessages: #(proceed debug correct)]
