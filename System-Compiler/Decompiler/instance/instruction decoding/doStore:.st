doStore: stackOrBlock
	"Only called internally, not from InstructionStream.  StackOrBlock is
	stack for store, statements for storePop."
	| var expr |
	var _ stack removeLast.
	expr _ stack removeLast.
	stackOrBlock addLast: (expr == ArgumentFlag
		ifTrue: [var]
		ifFalse: [constructor codeAssignTo: var value: expr])
