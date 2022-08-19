checkForBlock: receiver
	"We just saw a blockCopy: message.  Check for a following block."
	| savePc jump args argPos block |
	receiver == constructor codeThisContext ifFalse: [^false].
	savePc _ pc.
	(jump _ self interpretJump) notNil
		ifFalse:
			[pc _ savePc.  ^nil].
	"Definitely a block"
	jump _ jump + pc.
	argPos _ statements size.
	[self willStorePop]
		whileTrue:
			[stack addLast: ArgumentFlag.  "Flag for doStore:"
			self interpretNextInstructionFor: self].
	args _ Array new: statements size - argPos.
	1 to: args size do: [:i | args at: i put: statements removeLast].  "Retrieve args"
	block _ self blockTo: jump.
	stack addLast: (constructor codeArguments: args block: block).
	^true
