init: aClass context: aContext notifying: req
	| variable node n homeNode indexNode |
	requestor _ req.
	class _ aClass.
	nTemps _ 0.
	supered _ false.
	self initScopeAndLiteralTables.
	n _ -1.
	class allInstVarNames do:
		[:variable |
		node _ VariableNode new
					name: variable
					index: (n _ n + 1)
					type: LdInstType.
		scopeTable at: variable put: node].
	aContext == nil
		ifFalse:
			[homeNode _ self bindTemp: 'homeContext'.
			"first temp = aContext passed as arg"
			n _ 0.
			aContext tempNames do:
				[:variable |
				indexNode _ self encodeLiteral: (n _ n + 1).
				node _ MessageNode new
							receiver: homeNode
							selector: #tempAt:
							arguments: (Array with: indexNode)
							precedence: 3
							from: self.
				scopeTable at: variable put: node]].
	sourceRanges _ Dictionary new: 32
