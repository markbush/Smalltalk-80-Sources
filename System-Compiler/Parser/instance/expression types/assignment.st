assignment
	"variable '_' expression => AssignmentNode"

	| varName var |
	varName _ self advance.
	(encoder cantStoreInto: varName)
		ifTrue: [^self notify: 'Cannot store into'].
	var _ encoder encodeVariable: varName.
	self advance.
	self expression ifFalse: [^self expected: 'Expression'].
	var isArg ifTrue: [^self notify: 'Cannot store into argument'].
	parseNode _ AssignmentNode new
				variable: var
				value: parseNode
				from: encoder
