fileItIn: fullText from: controller
	"Make a Stream on the text selection and fileIn it."
	| selection |
	selection _ controller selection.
	(ReadWriteStream on: selection from: 1 to: selection size) fileIn
