unpackBits: fieldSize into: byteArray
	"Unpack the packed bit fields of the receiver's bytes into the low order fieldSize bits of byteArray twice as large.  fieldSize must be 1, 2, 4, or 8.  The receiver's size must be even.  byteArray's size must be a multiple of 16/fieldSize.  Answers the unpacked array."

	| unpackedForm packedForm sourceX destX bitBlt fieldsPerWord ht |
	fieldsPerWord _ 16//fieldSize.
	ht _ self size//2.
	unpackedForm _ Form new extent: fieldsPerWord*8@ht offset: 0@0 bits: byteArray.
	packedForm _ Form new extent: 16@ht offset: 0@0 bits: self.
	bitBlt _ BitBlt destForm: unpackedForm
		sourceForm: packedForm
		halftoneForm: nil
		combinationRule: Form over
		destOrigin: 0@0
		sourceOrigin: 0@0
		extent: fieldSize@ht
		clipRect: unpackedForm boundingBox.

	sourceX _ 0.
	destX _ 8-fieldSize.
	fieldsPerWord timesRepeat:
		[bitBlt sourceX: sourceX; destX: destX; copyBits.
		sourceX _ sourceX + fieldSize.
		destX _ destX + 8].

	^byteArray
