initialize
	"If a LargeNegativeInteger is exactly SmallInteger maxBytes in size,
	and its high-order byte does not exceed MaxHi, the number
	should be a SmallInteger."

	SmallInteger initialize.
	MinHi _ (SmallInteger minVal bitShift: (SmallInteger maxBytes - 1 * -8)) negated
	"LargeNegativeInteger initialize."
