size
	| tally |
	tally _ 0.
	contents do: [:each | tally _ tally + each].
	^tally
