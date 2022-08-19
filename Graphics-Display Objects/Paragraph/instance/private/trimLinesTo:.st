trimLinesTo: lastLineInteger
	(lastLineInteger + 1 to: lastLine) do: [:i | lines at: i put: nil].
	(lastLine _ lastLineInteger) < (lines size // 2)
		ifTrue: [lines _ lines copyFrom: 1 to: lines size - (lines size // 2)]
