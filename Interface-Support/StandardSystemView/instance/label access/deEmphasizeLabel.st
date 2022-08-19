deEmphasizeLabel
	"If the label is highlighted, reverse it."

	isLabelComplemented
		ifTrue:
			[self reverseLabel.
			isLabelComplemented _ false]
