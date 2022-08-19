emitForReturn: stack on: strm
	self emitForValue: stack on: strm.
	strm nextPut: EndMethod
