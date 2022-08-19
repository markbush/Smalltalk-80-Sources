at: index
	| run offset value |
	self at: index setRunOffsetAndValue: [:run :offset :value | ^value]
