emitForValue: stack on: aStream
	| arg blockStack |
	aStream nextPut: LdThisContext.
	stack push: 1.
	nArgsNode emitForValue: stack on: aStream.
	remoteCopyNode emit: stack args: 1 on: aStream.
	"jmp-around must be 2 bytes"
	self emitLongJump: size on: aStream.

	"Block gets its own stack in blockContext"
	blockStack _ ParseStack new init.
	blockStack push: arguments size.
	arguments reverseDo: [:arg | arg emitStorePop: blockStack on: aStream].
	self emitForEvaluatedValue: blockStack on: aStream.
	endPC _ aStream position+1.
	self returns ifFalse: [aStream nextPut: EndRemote].
	blockStack pop: 1.

	stack max: blockStack size
