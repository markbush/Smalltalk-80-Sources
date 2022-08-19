keywords
	"Answer an array of the keywords that compose the receiver."

	| result aStream i l char |
	result _ WriteStream on: (Array new: 10).
	aStream _ WriteStream on: (String new: 16).
	i _ 1.
	l _ self size.
	[i <= l]
		whileTrue:
			[char _ self at: i.
			aStream nextPut: char.
			(char = $: or: [i = l])
				ifTrue:
					[result nextPut: aStream contents.
					aStream reset].
			i _ i + 1].
	^result contents
