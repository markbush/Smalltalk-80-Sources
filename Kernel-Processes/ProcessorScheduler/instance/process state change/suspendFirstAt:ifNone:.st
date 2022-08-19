suspendFirstAt: aPriority ifNone: noneBlock
	"Suspend the first Process that is waiting to run with priority aPriority.
	If no Process is waiting, evaluate noneBlock"

	| aList |
	aList _ quiescentProcessLists at: aPriority.
	aList isEmpty
		ifTrue: [^noneBlock value]
		ifFalse: [^aList first suspend]
