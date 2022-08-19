defaultWindow
	"Build the minimum Rectangle that encloses all the windows of the receiver's
	subViews. The answer is a Rectangle obtained by expanding this
	minimal Rectangle by the borderWidth of the receiver. If the receiver has no
	subViews, then a Rectangle enclosing the entire display screen is answered.
	It is used internally by View methods if no window has been specified for the
	View.  Specialized subclasses of View should redefine
	View|defaultWindow to handle the default case for instances that have no
	subViews. "

	| aRectangle |
	subViews isEmpty ifTrue: [^DisplayScreen boundingBox].
	aRectangle _ self firstSubView viewport.
	subViews do: [:aView | aRectangle _ aRectangle merge: aView viewport].
	^aRectangle expandBy: borderWidth
