pushReceiverVariable: offset
	| var |
	(var _ instVars at: offset + 1) == nil
		ifTrue:
			["Not set up yet"
			instVars at: offset + 1 put: (var _ constructor codeInst: offset)].
	stack addLast: var
