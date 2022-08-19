asObject
	"This is the inverse of Object.asOop; look there for details."
	<primitive: 76>
	self < 32768
		ifTrue: [^ (self-32768) asObject].  "16K...32K-1 synonym for -16K...-1"
	self < 49152
		ifTrue: [^ self-32768].	"32K...48K-1 --> SmallIntegers 0...16K-1"
	self < 65536
		ifTrue: [^ self-65536].	"48K...64K-1 --> SmallIntegers -16K...-1"
	^ #NonExistentObject
