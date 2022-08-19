resetState
	"intercept to force selection of entire text"

	super resetState.
	stopBlock _ paragraph characterBlockForIndex: paragraph text size+1.
