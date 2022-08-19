fileOutChanges
	"Append to the receiver a description of all system changes."

	Transcript refresh; cr; cr; show: ('Filing out changes on:'); crtab; show: self name.
	super fileOutChanges
