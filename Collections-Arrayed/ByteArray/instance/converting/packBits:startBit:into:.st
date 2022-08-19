packBits: fieldSize startBit: fieldStart into: byteArray
	"Pack fieldSize bits of the receiver's bytes into the bytes of byteArray.  fieldSize must be 1, 2, 4, or 8.  fieldStart is the bit offset of the field within the byte (8-fieldSize for low order bits).  The receiver's size must be a multiple of 16/fieldSize.  byteArray's size must be even.  Answers the packed array."

	| unpackedForm packedForm sourceX destX bitBlt fieldsPerWord ht |
	fieldsPerWord _ 16//fieldSize.
	ht _ self size//fieldsPerWord.
	unpackedForm _ Form new extent: fieldsPerWord*8@ht offset: 0@0 bits: self.
	packedForm _ Form new extent: 16@ht offset: 0@0 bits: byteArray.
	bitBlt _ BitBlt destForm: packedForm
		sourceForm: unpackedForm
		halftoneForm: nil
		combinationRule: Form over
		destOrigin: 0@0
		sourceOrigin: 0@0
		extent: fieldSize@ht
		clipRect: (0@0 corner: 16@ht).

	sourceX _ fieldStart.
	destX _ 0.
	fieldsPerWord timesRepeat:
		[bitBlt sourceX: sourceX; destX: destX; copyBits.
		sourceX _ sourceX + 8.
		destX _ destX + fieldSize].

	^byteArray
