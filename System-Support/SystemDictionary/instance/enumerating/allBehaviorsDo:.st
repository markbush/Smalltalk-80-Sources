allBehaviorsDo: aBlock
	"Evaluate the argument, aBlock, for each kind of Behavior in the system
	(that is, Object and its subclasses)."
	aBlock value: Object.
	Object allSubclassesDo: aBlock
