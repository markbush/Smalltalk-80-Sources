instVarAt: index
	"Answer a fixed variable in an object.  The numbering of the variables
	corresponds to the named instance variables.  Fail if the index is not an
	Integer or is not the index of a fixed variable.  Essential.  See documentation in
	Object metaclass."

	<primitive: 73>
	"Access beyond fixed variables."
	^self basicAt: index - self class instSize
