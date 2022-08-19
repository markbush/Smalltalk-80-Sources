name: name key: key class: leafNodeClass type: type set: dict
	| node |
	^dict
		at: key
		ifAbsent:
			[node _ leafNodeClass new
						name: name
						key: key
						index: nil
						type: type.
			dict at: key put: node.
			^node]
