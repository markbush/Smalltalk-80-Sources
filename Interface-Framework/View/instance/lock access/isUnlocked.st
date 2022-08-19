isUnlocked
	"Answer whether the receiver is unlocked.
	See comment in View|isLocked."

	^displayTransformation == nil & (insetDisplayBox == nil)
