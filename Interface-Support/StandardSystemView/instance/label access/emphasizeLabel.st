emphasizeLabel
	"Highlight the label."

	isLabelComplemented
		ifFalse:
			[self reverseLabel.
			isLabelComplemented _ true]
