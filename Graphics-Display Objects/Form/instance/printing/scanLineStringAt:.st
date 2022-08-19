scanLineStringAt: y
	| form |
	form _ Form stringScanLineOfWidth: width.
	form copy: form boundingBox from: 0@y in: self rule: Form over.
 	^ form bits
