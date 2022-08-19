initialize
	"Reset the receiver to be empty."

	classChanges _ Dictionary new.
	methodChanges _ Dictionary new.
	classRemoves _ Set new.
	reorganizeSystem _ false.
	specialDoIts _ OrderedCollection new.
