copy
	| v copy |
	v _ valueArray.
	valueArray _ valueArray shallowCopy.
	copy _ super shallowCopy.
	valueArray _ v.
	^copy
