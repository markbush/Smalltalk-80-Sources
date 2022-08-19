initialize
	"ChangeListController initialize"

	ChangeListYellowButtonMenu _
		PopUpMenu
			labels:
'file in
file out
recover last changes
display system changes
do all
remove all
restore all
spawn all
forget
do it
remove it
restore it
spawn it
check conflicts
check with system'
			lines: #( 4 8 9 13 ).
	ChangeListYellowButtonMessages _
		#(fileIn fileOut recover getChanges doAll removeAll restoreAll copyView forget doThis removeItem restoreItem browse check checkWithSystem)
