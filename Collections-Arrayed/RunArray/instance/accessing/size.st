size
	| size |
	size _ 0.
	runs do: [:run | size _ size + run].
	^size
