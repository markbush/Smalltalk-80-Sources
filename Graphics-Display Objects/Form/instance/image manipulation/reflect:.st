reflect: spec
	"spec = 0@1 for vertical reflection, 1@0 for horizontal"
	| mask temp all newForm full half |
	all _ self boundingBox.
	mask _ Form extent: self extent.
	temp _ Form extent: self extent.
	full _ self extent*spec.
	mask black: (0@0 extent: self extent // (spec+1)).
	newForm _ self deepCopy.
	[full x + full y > 1] whileTrue:
		[half _ full // 2.
		temp copy: all from: 0@0 in: newForm rule: 3.
		temp copy: all from: full-half in: newForm rule: 6.
		temp copy: all from: 0@0 in: mask rule: 1.
		newForm copy: all from: 0@0 in: temp rule: 6.
		newForm copy: (all translateBy: full-half) from: 0@0 in: temp rule: 6.
		"Now refine the mask"
		mask copy: all from: half - (half//2) in: mask rule: 1.
		mask copy: (all translateBy: full-half) from: 0@0 in: mask rule: 7.
		full _ half].
	^ newForm
"
 [Sensor redButtonPressed] whileFalse:
	[((Form fromDisplay: (Rectangle new origin: Sensor cursorPoint extent: 113@37)) reflect: 1@0)
		displayAt: 0@0].
"
