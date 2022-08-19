sizeForValue: encoder
	| arg total argSize |
	special > 0
		ifTrue: [^self perform: (MacroSizers at: special) with: encoder with: true].
	receiver == NodeSuper
		ifTrue: [selector _ selector copy "only necess for splOops"].
	total _ selector size: encoder args: arguments size super: receiver == NodeSuper.
	receiver == nil
		ifFalse: [total _ total + (receiver sizeForValue: encoder)].
	sizes _ arguments collect:
					[:arg |
					argSize _ arg sizeForValue: encoder.
					total _ total + argSize.
					argSize].
	^total
