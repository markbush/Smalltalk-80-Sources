storeOn: aStream
	"Character literals are preceded by '$'."
	aStream nextPut: $$; nextPut: self
