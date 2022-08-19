restoreAll
	list do: [:change | removed remove: change ifAbsent: []]
