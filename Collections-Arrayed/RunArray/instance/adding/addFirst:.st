addFirst: value
	"Add value as the first element of the receiver."

	(runs size=0 or: [values first ~= value])
	  ifTrue:
		[runs_ (Array with: 1) , runs.
		values_ (Array with: value) , values]
	  ifFalse:
		[runs at: 1 put: runs first+1]
