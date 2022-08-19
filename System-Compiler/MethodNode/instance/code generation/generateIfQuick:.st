generateIfQuick: methodBlock
	| v |
	(primitive = 0 and: [arguments size = 0 and: [block isQuick]])
		ifTrue:
			[v _ block code.
			v < 0
				ifTrue: [^self].
			v = LdSelf
				ifTrue: [^methodBlock value: CompiledMethod toReturnSelf].
			v < ((CodeBases at: LdInstType) + (CodeLimits at: LdInstType))
				ifTrue: [^methodBlock value: (CompiledMethod toReturnField: v)].
			(v // 256 = 1 and: [v \\ 256 < 32])
				ifTrue:
					[^methodBlock value: (CompiledMethod toReturnField: v \\ 256)]]
