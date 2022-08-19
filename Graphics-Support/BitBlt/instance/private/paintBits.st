paintBits
	"Perform the paint operation, which may require two calls to BitBlt."
	| oldMask |

	(halftoneForm == nil or: [halftoneForm == Form black]) ifFalse: 		"optimization"
		[oldMask _ halftoneForm.
		combinationRule _ Form erase.
		halftoneForm _ nil.
		self copyBits. 			"first erase hole in dest"
		halftoneForm _ oldMask].
	halftoneForm == Form white ifFalse: 		"optimization"
		[combinationRule _ Form under.
		self copyBits].
	combinationRule _ Form paint. 	"restore rule"

	"(Form dotOfSize: 32)
		displayOn: Display
		at: Sensor cursorPoint
		clippingBox: Display boundingBox
		rule: Form paint
		mask: Form lightGray"
