initializeMasks
	| anArray |
	anArray _ Array new: 16.
	anArray atAllPut: 0.
	whiteMask _ Form extent: 16 @ 16 fromArray: anArray offset: 0 @ 0.
	anArray atAllPut: 65535.
	blackMask _ Form extent: 16 @ 16 fromArray: anArray offset: 0 @ 0.
	anArray atAll: (1 to: anArray size by: 2) put: 21845.
	anArray atAll: (2 to: anArray size by: 2) put: 43690.
	grayMask _ Form extent: 16 @ 16 fromArray: anArray offset: 0 @ 0.
	anArray atAll: (1 to: anArray size by: 2) put: 30583.
	anArray atAll: (2 to: anArray size by: 2) put: 56797.
	darkGrayMask _ Form extent: 16 @ 16 fromArray: anArray offset: 0 @ 0.
	lightGrayMask _ darkGrayMask deepCopy reverse.
	anArray atAll: (1 to: anArray size by: 4) put: 34952.
	anArray atAll: (2 to: anArray size by: 2) put: 0.
	anArray atAll: (3 to: anArray size by: 4) put: 8738.
	veryLightGrayMask _  Form extent: 16 @ 16 fromArray: anArray offset: 0 @ 0

	"Form initializeMasks"
