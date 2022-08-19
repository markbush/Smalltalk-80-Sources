writeOn: fileName
	"Saves the receiver on the file fileName in the format--fileCode, extent, offset, bits."

	| file fileCode filePosition |
	fileCode _ 1.
	"This indicates that the instance is a Form.  Should probably be changed
	when better methods for permanent storage are devised."
	file _ FileStream fileNamed: fileName.
	file binary.
	file nextWordPut: fileCode.
	file nextWordPut: width.
	file nextWordPut: height.
	file nextWordPut: offset x.
	file nextWordPut: offset y.
	filePosition _ 0.
	1 to: width + 15 // 16 do:
		[:j |
		1 to: height do: [:i | file nextWordPut: (bits at: (filePosition _ filePosition + 1))]].
	file close.
