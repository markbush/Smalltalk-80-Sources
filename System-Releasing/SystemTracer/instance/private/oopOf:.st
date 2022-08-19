oopOf: obj
	"Returns an OT index, also suitable for indexing map and refcts.
	obj must not be a SmallInteger."

	^ self asOopToIndex: obj asOop
