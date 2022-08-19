list
	| name |
	^list collect:
		[:c |
		name _ nil.
		fieldList do:
			[:f |
			f == nil ifFalse:
				[f _ c perform: f.
				f == nil ifFalse:
					[name == nil ifTrue: [name _ WriteStream on: (String new: 50)].
					name nextPut: $(; nextPutAll: f; nextPutAll: ') ']]].
		name == nil ifTrue: [c name] ifFalse: [name nextPutAll: c name.  name contents]]
