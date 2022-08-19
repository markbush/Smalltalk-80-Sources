classPart
	"I must be a compound selector.  Return my class name"
	| i |
	i _ self indexOf: $. ifAbsent: [self error: 'class part not found'].
	^(self copyFrom: 1 to: i-1) asSymbol
