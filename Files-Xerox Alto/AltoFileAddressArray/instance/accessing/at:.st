at: index
	| run offset value |
	super at: index setRunOffsetAndValue:
		[:run :offset :value | ^directory virtualToReal: value + offset]
