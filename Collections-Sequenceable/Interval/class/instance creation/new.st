new
	"Create and answer with a new instance of the receiver (a class) with no indexable
	fields.  Fail if the class is indexable.  Override SequenceableCollection new.
	Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 70>
	self isVariable ifTrue: [^self new: 0].
	self primitiveFailed
