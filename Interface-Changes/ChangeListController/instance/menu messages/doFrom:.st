doFrom: firstIndex
	"Reset selection each time through the loop, so that if an error occurs, the selection is left at the item which caused it."
	firstIndex to: model listSize do:
		[:index |
		(model hasRemoved: index)
			ifFalse:
				[model toggleListIndex: index.
				model doThis: index]]
