readOrAdd: aFilePage
	"Read aFilePage if it exists or extend File to create it as an empty page."

	| pageNumber filePage |
	filePage _ aFilePage.
	pageNumber _ filePage pageNumber.
	pageNumber <= lastPageNumber ifTrue: [^self read: filePage].
	(lastPageNumber + 1 to: pageNumber - 1)
		do: ["write full intermediate pages"
			filePage pageNumber: pageNumber.
			filePage _ self write: filePage].
	"return an empty last page"
	filePage pageNumber: pageNumber.
	filePage size: 0.
	^filePage
