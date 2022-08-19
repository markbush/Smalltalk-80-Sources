fileIn
	"Guarantee fileStream is readOnly before fileIn for efficiency and to eliminate remote sharing conflicts"

	Transcript refresh; cr; cr; show: 'Filing in from:'; crtab; show: self name; cr.
	self readOnly.
	^super fileIn
