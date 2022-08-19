printInstructionsOn: aStream
	"Append to the stream, aStream, a description of each bytecode in the instruction
	stream."

	| end |
	stream _ aStream.
	end _ self method endPC.
	oldPC _ pc.
	[pc <= end]
		whileTrue: [super interpretNextInstructionFor: self]
