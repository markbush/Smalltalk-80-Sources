model: aChangeList
	super model: aChangeList.
	self list: model list.
	selection _ model listIndex.
