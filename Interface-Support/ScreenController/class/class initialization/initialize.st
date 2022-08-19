initialize
	"Initialize the System Menu."

	ScreenYellowButtonMenu _
		PopUpMenu
			labels:
'restore display
exit project
project
file list
browser
workspace
system transcript
system workspace
save
quit'
			lines: #(2 8 ).
	ScreenYellowButtonMessages _
			#(restoreDisplay exitProject openProject
			openFileList openBrowser openWorkspace openTranscript openSystemWorkspace
			save quit).

	"ScreenController initialize.
	ScreenController allInstancesDo: [:c | c initializeYellowButtonMenu]"
