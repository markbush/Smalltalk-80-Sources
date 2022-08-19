encodeVariable: name
	^scopeTable at: name
		ifAbsent:
			[self lookupInPools: name
				ifFound: [:assoc | ^ self global: assoc name: name].
			requestor editor notNil
				ifTrue: [self undeclared: name]
				ifFalse: [self declareUndeclared: name]]
