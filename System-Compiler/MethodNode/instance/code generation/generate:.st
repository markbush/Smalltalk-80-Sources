generate: trailer
	"I am the root of a parse tree; answer with an instance of CompiledMethod."
	| blkSize method nLits lit stack strm nArgs i |
	self generateIfQuick:
		[:method |
		1 to: 3 do: [:i | method at: method size - 3 + i put: (trailer at: i)].
		method cacheTempNames: self tempNames.
		^method].
	nArgs _ arguments size.
	blkSize _ block sizeForEvaluatedValue: encoder.
	literals _ encoder literals: primitive nArgs: nArgs.
	encoder maxTemp > 31
		ifTrue: [^self error: 'Too many temporary variables'].
	(nLits _ literals size) > 63
		ifTrue: [^self error: 'Too many literals referenced'].
	method _ CompiledMethod	"Dummy to allocate right size"
				newBytes: blkSize
				flags: ((nArgs <= 4 and: [primitive = 0]) ifTrue: [nArgs] ifFalse: [7])
				nTemps: encoder maxTemp
				nStack: 0
				nLits: nLits.
	strm _ ReadWriteStream with: method.
	strm position: method initialPC - 1.
	stack _ ParseStack new init.
	block emitForEvaluatedValue: stack on: strm.
	stack position ~= 1 ifTrue: [^self error: 'Compiler stack discrepancy'].
	strm position ~= (method size - 3)
		ifTrue: [^self error: 'Compiler code size discrepancy'].
	1 to: nLits do: [:lit | method literalAt: lit put: (literals at: lit)].
	method needsStack: stack size encoder: encoder.
	1 to: 3 do: [:i | method at: method size - 3 + i put: (trailer at: i)].
	method cacheTempNames: self tempNames.
	^method
