hash
	"Hash must be redefined since = was redefined."
	^((hours hash bitShift: 3) bitXor: minutes) bitXor: seconds
