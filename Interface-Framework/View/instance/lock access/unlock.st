unlock
	"'Unlock the receiver and all of its subViews (see View|isUnlocked). This has the
	effect of forcing the display transformation (see View|displayTransformation) and
	inset display box (see View|insetDisplayBox) of the receiver and all its subViews to
	be recomputed the next time they are referenced. The locking and unlocking of a
	View is handled automatically by the internal methods of the View, but can also be
	done explicitly if desired."

	self isUnlocked ifTrue: [^self].
	displayTransformation _ nil.
	insetDisplayBox _ nil.
	subViews do: [:aSubView | aSubView unlock]
