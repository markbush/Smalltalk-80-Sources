checkName: aFileName fixErrors: aBoolean
	"Check a string aFileName for validity as a file name.  If there are problems
	(e.g., illegal length or characters) and aBoolean is false, create an error;  if
	there are problems and aBoolean is true, make the name legal (usually by
	truncating and/or tranforming characters) and answer the new name.  Otherwise,
	answer the name.  Default behavior is to get rid of ending period.
	Subclasses can do any kind of checking they want and answer either the
	name, or false if no good."

	aFileName isEmpty ifTrue: [aBoolean ifFalse: [self error: 'file name empty']].
	aFileName last = $.
		ifTrue:
			[aBoolean ifFalse: [self error: 'file name ends in .'].
			^aFileName copyFrom: 1 to: aFileName size - 1]
		ifFalse: [^aFileName]
