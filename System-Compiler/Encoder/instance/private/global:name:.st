global: ref name: name
	^self
		name: name
		key: ref
		class: VariableNode
		type: LdLitIndType
		set: litIndSet
