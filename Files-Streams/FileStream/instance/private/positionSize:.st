positionSize: size
	"compute the position for an object of a given size,
	e.g. characters (1), words (2), fixed length (n),
	from the current character position and the current page"

	| len pos |
	len _ page dataSize.
	(size = 1 or: [len \\ size ~= 0])
		ifTrue:
			[pos _ page pageNumber - 1 * len + (position - page dataBeginning).
			size = 1
				ifTrue: [^pos]
				ifFalse: [^pos // size]]
		ifFalse: ["page length is a multiple of size"
				^page pageNumber - 1 * (len // size)
							+ (position - page dataBeginning // size)]
