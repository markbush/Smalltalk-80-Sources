recur: exp
	"Invokes a recursion involving ((2 raisedTo: exp+1) - 1) activations and
	returns."

	exp = 0 ifTrue: [^self].
	self recur: exp - 1.
	^self recur: exp - 1
