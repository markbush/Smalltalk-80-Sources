addLast: value
	"Add value as the last element of the receiver."

	(runs size=0 or: [values last ~= value])
	  ifTrue:
		[runs_ runs copyWith: 1.
		values_ values copyWith: value]
	  ifFalse:
		[runs at: runs size put: runs last+1]
