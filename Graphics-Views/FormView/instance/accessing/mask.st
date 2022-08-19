mask
	"Answer an instance of class Form that is the mask used when displaying
	the receiver's model (a Form) on the display screen (see BitBlt for the
	meaning of this mask)."

	mask == nil
		ifTrue: [^self defaultMask]
		ifFalse: [^mask]
