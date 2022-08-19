fieldValue
	field = 'self' ifTrue: [^ object receiver].
	^ object tempAt: self fieldIndex
