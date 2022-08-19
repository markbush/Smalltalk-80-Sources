toReturnField: field
	"Answer an instance of me that is a quick return of the instance
	variable indexed by the argument, field."

	^self
		newBytes: 0
		flags: 6
		nTemps: field
		nStack: 0
		nLits: 0
