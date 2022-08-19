digitCompare: arg
	| len arglen t5 t6 |
	len _ self digitLength.
	(arglen _ arg digitLength) ~= len
		ifTrue: [arglen > len
					ifTrue: [^-1]
					ifFalse: [^1]].
	[len > 0]
		whileTrue:
			[(t5 _ arg digitAt: len) ~= (t6 _ self digitAt: len)
				ifTrue: [t5 < t6
							ifTrue: [^1]
							ifFalse: [^-1]].
			len _ len - 1].
	^0
