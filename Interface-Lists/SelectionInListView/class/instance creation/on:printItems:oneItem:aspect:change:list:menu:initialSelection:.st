on: anObject printItems: flag1 oneItem: flag2
	aspect: aspectMsg change: changeMsg list: listMsg menu: menuMsg initialSelection: sel
	"Create a listView with these parameters - see comment in on:aspect:change: . . .
	Moreover, if printItems is true, then the view will show the printStrings of the
		items in the list, rather than assuming they are already text-like objects.
	And if oneItem is true the list works as a read-only list of one item.  this is mainly
		used for the root list of various sub-browsers spawned from the browser."

	^ self new on: anObject printItems: flag1 oneItem: flag2
		aspect: aspectMsg change: changeMsg list: listMsg menu: menuMsg initialSelection: sel
