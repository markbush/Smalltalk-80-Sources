statementsTo: end
	| blockPos stackPos t |
	"Decompile the method from pc up to end and return an array of
	expressions.  If at run time this block will leave a value on
	the stack, set hasValue to true.  If the block ends with a jump or return,
	set exit to the destination of the jump, or the end of the method;
	otherwise, set exit = end.  Leave pc = end."
	blockPos _ statements size.
	stackPos _ stack size.
	[pc < end]
		whileTrue:
			[lastPc _ pc.  limit _ end.  "for performs"
			self interpretNextInstructionFor: self].
	"If there is an additional item on the stack, it will be the value
	of this block."
	(hasValue _ stack size > stackPos)
		ifTrue:
			[statements addLast: stack removeLast].
	lastJumpPc = lastPc ifFalse: [exit _ pc].
	^self popTo: blockPos
