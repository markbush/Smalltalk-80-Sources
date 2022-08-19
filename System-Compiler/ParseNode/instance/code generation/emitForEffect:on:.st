emitForEffect: stack on: strm
	self emitForValue: stack on: strm.
	strm nextPut: Pop.
	stack pop: 1
