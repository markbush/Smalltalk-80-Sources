newMethod: numberOfBytes header: headerWord
	"Answer an instance of me.  The number of literals (and other
	information) is specified the headerWord.  The first argument specifies the
	number of fields for bytecodes in the method.  Fail if either argument is not a
	SmallInteger, or if numberOfBytes is negative.  Once the header of a method is
	set by this primitive, it cannot be changed in any way.  Essential.  See Object
	documentation whatIsAPrimitive. "

	<primitive: 79>
	^self primitiveFailed
