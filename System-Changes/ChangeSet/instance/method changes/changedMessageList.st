changedMessageList
	"Answer an array that identifies the methods that have been changed.
	Each entry is a String containing the class name and method selector."

	| messageList |
	messageList _ SortedCollection new.
	methodChanges associationsDo:
		[:clAssoc |
		clAssoc value associationsDo:
			[:mAssoc |
			mAssoc value = #remove ifFalse:
				[messageList add: clAssoc key asString, ' ' , mAssoc key]]].
	^messageList asArray
