controlInitialize

	toolMenu notNil ifTrue:		"check for Galley compatibility"
		[toolMenu view
			align: toolMenu view displayBox topCenter
			with: view displayBox bottomCenter+(0@1).
		toolMenu view translateBy:
			(toolMenu view displayBox amountToTranslateWithin: Display boundingBox) x @ 0.
		underToolMenu _ Form fromDisplay: toolMenu view displayBox.
		toolMenu view display].
	self normalizeColor: unNormalizedColor.
	sensor waitNoButton
