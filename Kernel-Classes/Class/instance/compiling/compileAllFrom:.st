compileAllFrom: otherClass
	super compileAllFrom: otherClass.
	self class compileAllFrom: otherClass class
