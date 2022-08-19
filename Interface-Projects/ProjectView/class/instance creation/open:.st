open: aProject
	"Answer an instance of me for the argument, aProject.  It is created on the
	display screen."
	| aProjectView topView |
	aProjectView _ super new.
	aProjectView model: aProject.
	aProjectView borderWidth: 1.
	topView _ StandardSystemView new.
	topView model: aProject.
	topView borderWidth: 1.
	topView addSubView: aProjectView.
	topView label: 'Project'.
	topView minimumSize: 100 @ 50.
	topView controller open
