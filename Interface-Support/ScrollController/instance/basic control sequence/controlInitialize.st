controlInitialize
	"The scrollbar has a two-pixel border, and for alignment it assumes that this sub-view
	has a one-pixel border and shares another one-pixel border from its neighbor/super view"
	super controlInitialize.
	scrollBar region: (0 @ 0 extent: 32 @ (view displayBox height + 2)).
	marker region: self computeMarkerRegion.
	scrollBar _ scrollBar align: scrollBar topRight with: view displayBox topLeft - (0@1).
	marker _ marker align: marker topCenter with: scrollBar inside topCenter.
	savedArea _ Form fromDisplay: scrollBar.
	scrollBar displayOn: Display.
	self moveMarker
