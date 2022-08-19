rotateBy: angle
	"Answer a copied Form rotated clockwise by angle in units of 90 degrees.
	angle = 0 means unchanged, 1 means clockwise 90 degrees, etc"
	| angle4 rotSize newForm rotForm all destPt sourcePt sourceDelta destDelta rotOrigin |
	angle4 _ angle \\ 4.
	angle = 0 ifTrue: [^self deepCopy].  "null rotation"
	angle = 2 ifTrue: [^(self reflect: 0@1) reflect: 1@0].  "two reflections does 180 degrees"

	"Break the problem up into squares of size 2^N, and rotate them"
	rotSize _ (width min: height)   "minimum rotation size"
				max: 64.  "but faster if we do larger chunks"
	rotSize _ 2 raisedTo: ((rotSize-1) asFloat floorLog: 2)+1.  "force up to a power of 2"
	newForm _ Form extent: self extent transpose.
	rotForm _ Form extent: rotSize asPoint.
	all _ rotForm boundingBox.
	sourcePt _ 0@0.
	width >= height
		ifTrue:
			[sourceDelta _ rotSize@0.
			angle=1
				ifTrue:
					[destPt _ 0@0.
					destDelta _ sourceDelta transpose.
					rotOrigin _ (rotSize-height)@0]
				ifFalse:
					[destPt _ 0@(width-rotSize).
					destDelta _ (0@0) - sourceDelta transpose.
					rotOrigin _ 0@0]]
		ifFalse:
			[sourceDelta _ 0@rotSize.
			angle=1
				ifTrue:
					[destPt _ (height-rotSize)@0.
					destDelta _ (0@0) - sourceDelta transpose.
					rotOrigin _ 0@0]
				ifFalse:
					[destPt _ 0@0.
					destDelta _ sourceDelta transpose.
					rotOrigin _ 0@(rotSize-width)]].
	(width max: height) - 1 // rotSize + 1 timesRepeat:
		[rotForm copy: all from: sourcePt in: self rule: 3.
		rotForm rotate2: (angle=1 ifTrue: [1] ifFalse: [-1]).
		newForm copy: (all translateBy: destPt) from: rotOrigin in: rotForm rule: 3.
		sourcePt _ sourcePt + sourceDelta.
		destPt _ destPt + destDelta].
	^ newForm
"
	| f |
	[Sensor redButtonPressed] whileFalse:
		[f_ Form fromDisplay: (Sensor cursorPoint extent: 100@15).
		(f rotateBy: 0) displayAt: 100@100.
		(f rotateBy: 1) displayAt: 85@100.
		(f rotateBy: 2) displayAt: 0@85.
		(f rotateBy: 3) displayAt: 100@0]
"
