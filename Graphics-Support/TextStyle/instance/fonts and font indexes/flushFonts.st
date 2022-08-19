flushFonts
	"Clean out the fonts, an aid when snapshotting claims too many are holding onto Display."
	BinaryChoice
		message:
'This is very dangerous and should only be used if you know what
you are doing and understand the system integrity issue.'
		displayAt: Display boundingBox center
		ifTrue: [1 to: fontArray size do: [:index | fontArray at: index put: nil]]
		ifFalse: [Transcript cr; show: 'flushFonts cancelled']


	"TextStyle default flushFonts."
