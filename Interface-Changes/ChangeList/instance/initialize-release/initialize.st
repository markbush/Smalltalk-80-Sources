initialize
	super initialize.
	listName _ ''.
	changes _ OrderedCollection new.
	list _ OrderedCollection new.
	selectionIndex _ 0.
	filter _ [:change | true].
	removed _ Set new.
	filterList _ #().
	fieldList _ #()
