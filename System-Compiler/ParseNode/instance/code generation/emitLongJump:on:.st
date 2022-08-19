emitLongJump: dist on: strm
	"force a two byte jump"

	self emitLong: dist code: JmpLong on: strm
