createOnForm: aForm
	"Creates a StandardSystemView for a FormEditor on aForm."

	| formView formEditor menuView topView extent |
	formView _ FormHolderView new model: aForm.
	formEditor _ self new.
	formView controller: formEditor.
	menuView _ FormMenuView new makeFormEditorMenu model: formEditor.
	menuView insideColor: Form lightGray.
	menuView borderWidth: 1.
	menuView window: (menuView defaultWindow expandBy: 16).
	formEditor toolMenu: menuView controller.
	topView _ StandardSystemView new.
	topView model: aForm.
	topView addSubView: formView.
	topView label: 'Form Editor'.
	topView borderWidth: 2.
	extent _ topView viewport extent.
	topView minimumSize: extent.
	topView maximumSize: extent.
	^topView
