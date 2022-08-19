nilFields
	"Store nil into all pointer fields of the receiver."

	self class isPointers ifFalse: [^self].
	1 to: self basicSize do:
		[:index | self basicAt: index put: nil].
	1 to: self class instSize do:
		[:index | self instVarAt: index put: nil].
