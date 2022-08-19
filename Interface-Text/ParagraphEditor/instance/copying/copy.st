copy
	| p c |
	"Return a copy of me, which goes one level deeper into my paragraph"
	p _ paragraph.
	paragraph _ paragraph copy.
	c _ super copy.
	paragraph _ p.
	^ c
