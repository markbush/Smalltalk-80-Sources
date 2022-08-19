superclasses
	^ (Array with: superclass) , (otherSuperclasses collect: [:sup | sup class])
