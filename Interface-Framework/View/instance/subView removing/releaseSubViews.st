releaseSubViews
	"Release (see View|releaseSubView: ) all subViews in the receiver's list of
	subViews."

	subViews do: [:aView | aView release].
	self resetSubViews
