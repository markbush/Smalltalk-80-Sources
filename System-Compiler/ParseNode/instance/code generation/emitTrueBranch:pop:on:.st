emitTrueBranch: dist pop: stack on: strm
	stack pop: 1.
	"offset for dist>0 adds another 4, so will begin at JmpLong+8"
	self emitLong: dist code: JmpLong+4 on: strm
