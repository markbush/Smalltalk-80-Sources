send: selector super: superFlag numArgs: numArgs
	| args rcvr selNode msgNode messages |
	args _ Array new: numArgs.
	(numArgs to: 1 by: -1) do:
		[:i | args at: i put: stack removeLast].
	rcvr _ stack removeLast.
	superFlag ifTrue: [rcvr _ constructor codeSuper].
	(selector == #blockCopy: and: [self checkForBlock: rcvr])
		ifFalse:
			[selNode _ constructor codeAnySelector: selector.
			rcvr == CascadeFlag
				ifTrue:
					[msgNode _ constructor
						codeCascadedMessage: selNode
						arguments: args.
					stack last == CascadeFlag
						ifFalse:
							["Last message of a cascade"
							statements addLast: msgNode.
							messages _ self popTo: stack removeLast.  "Depth saved by first dup"
							msgNode _ constructor
								codeCascade: stack removeLast
								messages: messages]]
				ifFalse:
					[msgNode _ constructor
						codeMessage: rcvr
						selector: selNode
						arguments: args].
			stack addLast: msgNode]
