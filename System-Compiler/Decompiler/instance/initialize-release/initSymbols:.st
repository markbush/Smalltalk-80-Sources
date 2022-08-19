initSymbols: aClass
	|  nTemps |
	constructor
		method: method
		class: aClass
		literals: method literals.
	constTable _ constructor codeConstants.
	instVars _ Array new: aClass instSize.
	"parse the header"
	nTemps _ method numTemps.
	tempVars _ Array new: nTemps.
	1 to: nTemps do: [:i | tempVars at: i put: (constructor codeTemp: i - 1)]
