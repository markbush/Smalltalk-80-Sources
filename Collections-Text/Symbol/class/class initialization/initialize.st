initialize
	| a v |
	"make up table of 1-char atoms"
	v _ Array new: 128.
	a _ String new: 1.
	1 to: 128 do:
		[:i |
		a at: 1 put: i - 1.
		v at: i put: a asSymbol].
	SingleCharSymbols _ v
	"Symbol initialize."
