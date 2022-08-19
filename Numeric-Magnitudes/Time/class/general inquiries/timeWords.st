timeWords
	"Answer with the seconds (in GMT) since Jan 1 1901: as a four element
	ByteArray.  The high-order 8-bits of the answer are stored in the byte
	indexed by 1 and the low-order 8-bits in the byte indexed 4.  Note: this
	order is not consistent with the primitives or the other time messages,
	but it is what the Alto file system uses (see AltoFile updateLeader:)."

	| seconds bytes |
	seconds _ ByteArray new: 4.
	self secondClockInto: seconds.
	bytes _ ByteArray new: 4.
	"Reverse the bytes"
	1 to: 4 do: [:i | bytes at: i put: (seconds at: 5 - i)].
	^bytes
