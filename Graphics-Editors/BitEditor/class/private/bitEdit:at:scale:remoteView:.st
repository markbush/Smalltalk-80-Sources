bitEdit: aForm at: magnifiedFormLocation scale: scaleFactor remoteView: remoteView
	"Creates a BitEditor on aForm. That is, aForm is a small image that will
	change as a result of the BitEditor changing a second and magnified
	view of me. magnifiedFormLocation is where the magnified form is to be
	located on the screen. scaleFactor is the amount of magnification. This
	method implements a scheduled view containing both a small and
	magnified view of aForm. Upon accept, aForm is updated."

	| aFormView scaledFormView bitEditor topView extent menuView lowerRightExtent |
	scaledFormView _ FormHolderView new model: aForm.
	scaledFormView scaleBy: scaleFactor.
	bitEditor _ self new.
	bitEditor setColor: #black.
	scaledFormView controller: bitEditor.
	topView _ StandardSystemView new.
	remoteView == nil ifTrue: [topView label: 'Bit Editor'].
	topView borderWidth: 2.
	topView insideColor: Form white.

	topView addSubView: scaledFormView.
	remoteView == nil
		ifTrue:  "If no remote view, then provide a local view of the form"
			[aFormView _ FormView new model: scaledFormView workingForm.
			aFormView controller: NoController new.
			(aForm isMemberOf: OpaqueForm) ifTrue:
				[scaledFormView insideColor: Form gray.
				aFormView insideColor: Form white].
			aForm height < 50
				ifTrue: [aFormView borderWidthLeft: 0 right: 2 top: 2 bottom: 2]
				ifFalse: [aFormView borderWidthLeft: 0 right: 2 top: 2 bottom: 0].
			topView addSubView: aFormView below: scaledFormView]
		 ifFalse:  "Otherwise, the remote one should view the same form"
			[remoteView model: scaledFormView workingForm].
	lowerRightExtent _ remoteView == nil
			ifTrue:
				[(scaledFormView viewport width - aFormView viewport width) @
					(aFormView viewport height max: 50)]
			ifFalse:
				[scaledFormView viewport width @ 50].
	menuView _ self buildColorMenu: lowerRightExtent
		colorCount: ((aForm isMemberOf: OpaqueForm) ifTrue: [3] ifFalse: [2]).
	menuView model: bitEditor.
	menuView borderWidthLeft: 0 right: 0 top: 2 bottom: 0.
	topView
		addSubView: menuView
		align: menuView viewport topRight
		with: scaledFormView viewport bottomRight.
	extent _ scaledFormView viewport extent + (0 @ lowerRightExtent y)
			+ (4 @ 4).  "+4 for borders"
	topView minimumSize: extent.
	topView maximumSize: extent.
	topView translateBy: magnifiedFormLocation.
	^topView
