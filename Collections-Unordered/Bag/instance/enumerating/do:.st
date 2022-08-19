do: aBlock
	contents associationsDo: [:assoc | assoc value timesRepeat: [aBlock value: assoc key]]
