release
	"Remove the receiver from its model's list of dependents (if the model exists), and
	release all of its subViews.  It is used to break possible cycles in the receiver and
	should be sent when the receiver is no longer needed.  Subclasses should include
	'super release.' when redefining release."

	super release.
	model removeDependent: self.
	model _ nil.
	controller release.
	controller _ nil.
	subViews ~~ nil ifTrue: [subViews do: [:aView | aView release]].
	subViews _ nil.
	superView _ nil.
