checkBlock: node as: nodeName from: encoder
	node canBeSpecialArgument ifTrue: [^node isMemberOf: BlockNode].
	((node isKindOf: BlockNode) and: [node numberOfArguments > 0])
		ifTrue:	[^encoder notify: '<- ', nodeName , ' of ' ,
					(MacroSelectors at: special) , ' must be 0-argument block']
		ifFalse: [^encoder notify: '<- ', nodeName , ' of ' ,
					(MacroSelectors at: special) , ' must be a block or variable']
