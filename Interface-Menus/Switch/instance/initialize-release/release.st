release
	"Set the on and off actions of the receiver to nil ('no action') in order to break
	possible pointer cycles.  It is sent by Switch|deleteDependent: when the
	last dependent has been deleted from the Switch's list of dependents."

	super release.
	onAction _ nil.
	offAction _ nil
