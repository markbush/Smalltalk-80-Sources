showMenuThenBrowse: selectorCollection
	"Show a menu of the given selectors, abbreviated to 20 characters.
	Create and schedule a message set browser of all implementors of the
	message chosen.  Do nothing if no message is chosen."
	| aStream menu index |
	selectorCollection isEmpty ifTrue: [^Transcript cr; show: 'No messages sent.'].
	aStream _ WriteStream on: (String new: 200).
	selectorCollection do:
		[:sel |
		aStream nextPutAll: (sel contractTo: 20); cr].
	aStream skip: -1.
	index _ (PopUpMenu labels: aStream contents) startUp.
	index > 0 ifTrue: [Smalltalk browseAllImplementorsOf: (selectorCollection at: index)]
