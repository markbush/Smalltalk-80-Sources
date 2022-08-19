initPrimitives
	"The methods (from class Object) that are cached in tryPrimitiveMethods are
	used by the simulator to catch failures when simulating primitives"

	| method |
	TryPrimitiveMethods _
		#(tryPrimitive0 tryPrimitive1: tryPrimitive2:with: tryPrimitive3:with:with:
			tryPrimitive4:with:with:with: )
			collect:
				[:sel |
				method _ Object compiledMethodAt: sel.
				method numLiterals = 3 ifFalse: [self error: 'doPrimitive assumes 3'].
				method]
