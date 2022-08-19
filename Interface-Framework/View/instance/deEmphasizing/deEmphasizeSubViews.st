deEmphasizeSubViews
	"Send the deEmphasize message to each of the receiver's subviews."
	subViews do: [:aSubView | aSubView deEmphasize]
