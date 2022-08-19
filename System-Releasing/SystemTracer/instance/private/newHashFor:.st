newHashFor: asOop
	"This is what asOop will return in the cloned system.
	asOop is what asOop returns in the current system"

	^ self asOopFromIndex: (map at: (self asOopToIndex: asOop))
