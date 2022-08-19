scanFrom: aStream
	"Files in methods from the stream, aStream.  Prints the name and
	category of the methods in the transcript view."

	| string |
	[string _ aStream nextChunk.
	string size > 0]						"done when double terminators"
		whileTrue: [class compile: string classified: category].
	Transcript show: class name , '<' , category , '
'
