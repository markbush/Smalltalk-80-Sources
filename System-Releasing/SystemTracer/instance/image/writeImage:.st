writeImage: roots
	| datalen otlen root oop i |
	ot readWrite.
	file readWrite.
	file position: 512.
	"Skip header page"
	ot position: 0.
	addr _ bank _ 0.
	self writeSpecial1.
	roots do: [:root | self trace: root].
	self writeSpecial2.
	datalen _ file position - 512 // 2.
	ot shorten.
	otlen _ ot position // 5 + 1 * 2.
	file padTo: 512 put: 0.
	ot position: 0.
	file nextWordPut: MT.
	file nextWordPut: 0.
	"oop zero"
	1 to: maxOop do:
		[:i |
		"append the OT, rectifying reference counts"
		oop _ ot nextWord.
		file nextPut: (refcts at: oop).
		file nextPut: ot next.
		file nextPut: ot next.
		file nextPut: ot next].
	file shorten.
	"info in header page"
	file position: 0.
	file nextWordPut: datalen // 65536.
	file nextWordPut: datalen \\ 65536.
	file nextWordPut: otlen // 65536.
	file nextWordPut: otlen \\ 65536.
	file nextWordPut: 0.
	file padTo: 512 put: 0.
	"Pad header page"
	ot close.
	file close.
	^Array with: otlen // 2 with: datalen
