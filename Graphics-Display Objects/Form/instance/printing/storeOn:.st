storeOn: aStream
	"Store the receiver out in the form:  Form extent:fromCompactArray:#()offset:"
	| stripe bitsWidth word |
	aStream nextPut: $(; nextPutAll: self species name; crtab: 1.
	aStream nextPutAll: 'extent: '; print: self extent; crtab: 1.
	aStream nextPutAll: 'fromCompactArray: #('.
	1 to: height do:
		[:i |
		stripe _ self scanLineStringAt: i-1.
		stripe oldRunEncoded storeOn: aStream.
		aStream cr].
	aStream nextPut: $); crtab: 1.
	aStream nextPutAll: 'offset: '; print: self offset; nextPut: $)
"
 | s | s_ WriteStream on: (String new: 2000).
Form fromUser storeOn: s.
(Compiler evaluate: s contents) displayAt: 0@0.

 | f | f_ Disk file: 'screen.form'.
Display storeOn: f.
f close. f size
"
