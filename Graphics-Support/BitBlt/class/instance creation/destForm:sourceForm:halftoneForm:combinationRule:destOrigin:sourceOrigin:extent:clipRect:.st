destForm: df sourceForm: sf halftoneForm: hf combinationRule: cr destOrigin: destOrigin sourceOrigin: sourceOrigin extent: extent clipRect: clipRect
	"Answer an instance of me with values set according to the
	arguments. "

	^self new
		setDestForm: df
		sourceForm: sf
		halftoneForm: hf
		combinationRule: cr
		destOrigin: destOrigin
		sourceOrigin: sourceOrigin
		extent: extent
		clipRect: clipRect
