getViewport
	"Returns the Rectangle representing the View's viewport (in the coordinate
	system of the superclass). If no viewport has been specified, the View's
	window transformed into the superView's coordinate system is saved and
	returned. It should be used by methods of View and subclasses (instead of
	directly referring to the viewport) unless it is known that a viewport actually
	exists. It should not be used outside of View or subclasses because the
	viewport is not sharable."

	viewport == nil ifTrue: [viewport _ self transform: self getWindow].
	^viewport
