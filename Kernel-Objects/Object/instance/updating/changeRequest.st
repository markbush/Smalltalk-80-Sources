changeRequest
	"Receiver wants to change; check with all dependents that it is OK."

	self dependents do: [:dep | dep updateRequest ifFalse: [^false]].
	^true
