controlTerminate
	| topController |
	super controlTerminate.
	model actionTaken ifFalse: [^self].
	topController _ view topView controller.
	(topController notNil & (topController isKindOf: StandardSystemController))
		ifTrue: [topController close].
	model selectAction
