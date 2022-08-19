classMenu
	"Browser flushMenus"
	className == nil ifTrue: [^nil].
	ClassMenu == nil ifTrue:
		[ClassMenu _ ActionMenu
			labels: 'file out\print out\spawn\spawn hierarchy
hierarchy\definition\comment\protocols
inst var refs\class var refs\class refs
rename\remove' withCRs
			lines: #(4 8 11)
			selectors: #(fileOutClass printOutClass spawnClass spawnHierarchy
showHierarchy editClass editComment editProtocols
browseFieldReferences browseClassVariables browseClassReferences
 renameClass removeClass)].
	^ ClassMenu
