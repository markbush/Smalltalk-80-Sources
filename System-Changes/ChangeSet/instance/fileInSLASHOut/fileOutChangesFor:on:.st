fileOutChangesFor: class on: stream
	"Write out all the changes the receiver knows about this class."

	| changes removes |
					"first file out class changes"
	self fileOutClassChanges: class on: stream.
					"next file out changed methods"
	removes _ OrderedCollection new.
	changes _ OrderedCollection new.
	(methodChanges at: class name ifAbsent: [^self]) associationsDo:
		[:mAssoc |
		mAssoc value = #remove
			ifTrue: [removes add: mAssoc key]
			ifFalse: [changes add: mAssoc key]].
	changes isEmpty ifFalse:
		[class fileOutChangedMessages: changes on: stream.
		stream cr].
	removes do:
		[:selector |
		stream nextChunkPut:
				class name, ' removeSelector: ', selector storeString; cr].
	"reintialize metaclass if necessary"
	((class isMemberOf: Metaclass) and: [changes includes: #initialize]) ifTrue:
		[stream nextChunkPut: class soleInstance name, ' initialize'; cr].
