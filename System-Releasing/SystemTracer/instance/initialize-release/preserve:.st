preserve: refs
	"This message should puts into the set 'refs' all the messages considered as
	roots in the system to be winnowed.  Those given below are a minimal set.
	See the comment in winnow:"

	1 to: Smalltalk specialSelectorSize do:  "these at least"
		[:i | refs add: (Smalltalk specialSelectorAt: i)].
	refs addAll: #(doesNotUnderstand: cannotReturn: monitor: unusedOop51).
	refs addAll: #()  "Lots more here for a real trace"
