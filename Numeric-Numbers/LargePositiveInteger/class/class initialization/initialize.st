initialize
	"If a LargePositiveInteger is exactly SmallInteger maxBytes in size,
	and its high-order byte does not exceed MaxHi, the number
	should be a SmallInteger."

	SmallInteger initialize.
	MaxHi _ SmallInteger maxVal bitShift: (SmallInteger maxBytes - 1 * -8)
	"LargePositiveInteger initialize."
