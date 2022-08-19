hasMethodReturn
	"answer true if there is an ^ in the code of this block"
	| method scanner end |
	method _ self method.
	"Determine end of block from long jump preceding it"
	end _ (method at: startpc-2)\\16-4*256 + (method at: startpc-1) + startpc - 1.
	scanner _ InstructionStream new method: method pc: startpc.
	scanner scanFor: [:byte | (byte between: 120 and: 124) or: [scanner pc > end]].
	^ scanner pc <= end
