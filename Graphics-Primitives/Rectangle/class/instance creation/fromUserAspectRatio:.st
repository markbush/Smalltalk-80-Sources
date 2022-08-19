fromUserAspectRatio: aspectPoint
	"Answer an instance of Rectangle that is determined by having the user designate the top left and bottom right corners, constrained so the aspect ratio is determined by aspectPoint."

	| rectangle extent ratio |
	Cursor origin showWhile:
		[rectangle _ Sensor waitButton extent: 1@1].
	ratio _ aspectPoint y/aspectPoint x.
	Cursor corner showWhile:
		[Sensor cursorPoint: rectangle corner.
		[Sensor anyButtonPressed] whileTrue:
			[extent _ Sensor cursorPoint-rectangle origin max: 1@1.
			(extent y*aspectPoint x) > (aspectPoint y*extent x)
				ifTrue: [extent x: (extent y/ratio) rounded] 	"contrain width"
				ifFalse: [extent y: (extent x*ratio) rounded]. 	"constrain height"
			rectangle extent: extent.
			Display flash: rectangle]].
	^rectangle

	"Rectangle fromUserAspectRatio: Sensor waitButton"
