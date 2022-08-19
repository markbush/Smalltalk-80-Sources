addClassVarName: aString
	"Add the argument, aString, as a class variable of the receiver."

	aString first isLowercase
		ifTrue: [^self error: aString, ' class variable name should be capitalized; proceed to include anyway.'].
	self withAllSubclasses do:
		[:subclass |
		subclass
			poolHas: aString asSymbol
			ifTrue:
				[:ignored |
				^self error: aString , ' is already used as a variable name in ' , subclass name]].
	classPool _ self classPool.  "might be nil"
	classPool add: (Association key: aString asSymbol value: nil)
