spread: rectangle from: sourceForm by: scale spacing: spacing direction: dir
	| slice sourcePt |
	slice _ 0 @ 0 corner: dir transpose * self extent + dir.
	sourcePt _ rectangle origin.
	1 to: (rectangle extent dotProduct: dir) do:
		[:i |
		"slice up original area"
		self copy: slice
			from: sourcePt
			in: sourceForm
			rule: 3.
		sourcePt _ sourcePt + dir.
		slice moveBy: dir * scale].
	1 to: scale - spacing - 1 do:
		[:i | "smear out the slices, leave white space"
		self copy: (dir corner: self extent)
			from: 0 @ 0
			in: self
			rule: 7]
