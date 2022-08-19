readFrom: aStream radix: radix
	"Answer an instance of one of my concrete subclasses. Initial minus sign accepted,
	and bases > 10 use letters A-Z. imbedded radix specifiers not allowed - use Integer
	class readFrom: for that. Answer zero (not an error) if there are no digits."

	| digit value neg |
	neg _ aStream peekFor: $-.
	value _ 0.
	[aStream atEnd]
		whileFalse:
			[digit _ aStream next digitValue.
			(digit < 0 or: [digit >= radix])
				ifTrue:
					[aStream skip: -1.
					neg ifTrue: [^value negated truncated"catch 0 minVal"].
					^value]
				ifFalse: [value _ value * radix + digit]].
	neg ifTrue: [^value negated truncated"catch 0 minVal"].
	^value
