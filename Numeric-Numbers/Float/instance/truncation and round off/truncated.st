truncated
	"Answer with a SmallInteger equal to the value of the receiver without
	its fractional part. The primitive fails if the truncated value cannot be
	represented as a SmallInteger. In that case, the code below will compute
	a LargeInteger truncated value. Essential. See Object documentation
	whatIsAPrimitive. "

	<primitive: 51>
	^(self quo: 16383.0) * 16383 + (self rem: 16383.0) truncated
