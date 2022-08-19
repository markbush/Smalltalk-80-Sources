controlActivity

	(toolMenu notNil "Galley compatibility" and: [toolMenu isControlWanted]) ifTrue: [^toolMenu startUp].
	self viewHasCursor ifTrue:
		[sensor redButtonPressed ifTrue: [^self redButtonActivity].
		sensor yellowButtonPressed ifTrue: [^self yellowButtonActivity].
		sensor blueButtonPressed ifTrue: [^self blueButtonActivity].
		self dragForm]
