initialize
	"Initialize the menu for the yellow mouse button."

	ProjectYellowButtonMenu _
		PopUpMenu
			labels: 'again
undo
copy
cut
paste
accept
cancel
enter'
			lines: #(2 5 7 ).
	ProjectYellowButtonMessages _
			#(again undo copySelection cut paste accept cancel enter )
	"ProjectViewController initialize"
