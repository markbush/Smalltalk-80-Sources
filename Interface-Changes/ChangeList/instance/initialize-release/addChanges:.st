addChanges: changedMessages
	ChangeScanner new scanChangedMessages: changedMessages do: [:change | changes add: change].
	self updateList
