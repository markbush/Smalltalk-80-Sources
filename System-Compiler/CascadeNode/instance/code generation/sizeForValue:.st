sizeForValue: encoder
	| size |
	size _ (receiver sizeForValue: encoder) + (messages size - 1 * 2).
	messages do: [:aMessage | size _ size + (aMessage sizeForValue: encoder)].
	^size
