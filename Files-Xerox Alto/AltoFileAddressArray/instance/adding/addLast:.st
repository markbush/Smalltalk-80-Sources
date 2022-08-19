addLast: val
	| virt |
	virt _ directory realToVirtual: val.
	(runs size = 0 or: [virt ~= ((values at: values size) + (runs at: runs size))])
		ifTrue: [super addLast: virt] "create new run"
		ifFalse: [runs at: runs size put: (runs at: runs size) + 1]. "stretch last run"
	^val
