topView
	"Answer the root of the tree of Views in which the receiver is a node.
	The root of the tree is found by going up the superView path until reaching
	a View whose superView is nil."

	superView == nil
		ifTrue: [^self]
		ifFalse: [^superView topView]
