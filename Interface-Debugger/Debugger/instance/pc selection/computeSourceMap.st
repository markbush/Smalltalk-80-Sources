computeSourceMap
	"Compute the sourceMap for PC selection in the current code."
	| methodNode |
	methodNode _ self selectedClass compilerClass new
			parse: sourceCode
			in: self selectedClass
			notifying: nil.
	sourceMap _ methodNode sourceMap.
	context method cacheTempNames: methodNode tempNames
