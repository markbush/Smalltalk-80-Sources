initialize
	"Initialize the yellow button pop-up menu and corresponding messages."

	CodeYellowButtonMenu _
		PopUpMenu
			labels:
'again
undo
copy
cut
paste
do it
print it
accept
cancel'
		lines: #(2 5 7).
	CodeYellowButtonMessages _
		#(again undo copySelection cut paste doIt printIt accept cancel)
	"StringHolderController initialize"
