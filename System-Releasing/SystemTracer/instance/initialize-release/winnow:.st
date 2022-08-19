winnow: nPasses
	"This method will clamp message out of the cloning process.  First it calls preserve:
	to establish a root set of messages which must not be deleted.  Then it makes a pass
	through the system figuring out which messages are not called from anywhere
	except in classes which have already been clamped.  Then it makes another pass,
	picking up those which are now unreferenced due to the preceding deletions.
	And so on;  usually 6 iterations gets most everything.

	It is advisable to run just the winnow phase of the trace (2 passes, say)
		ExportTracer new init: thisContext; winnow: 2
	and then read the file chaff.st to see what got zapped, before doing a full trace.
	Chances are, you will have forgotten to include several messages in preserve: (qv)."

	| f refs class sel lit method first |
	f _ Disk file: 'chaff.st'.
	" 6 iterations gets most everything"
	1 to: nPasses do:
		[:i |
		Transcript show: 'Winnow pass ' , i printString; cr; endEntry.
		refs _ Set new: 4096.
		self preserve: refs.
		Smalltalk allBehaviorsDo: [:class | "collect all refs"
			(self hasClamped: class)
				ifFalse: [class selectors do:
						[:sel |
						method _ class compiledMethodAt: sel.
						(self hasClamped: method)
							ifFalse: [method literals do: [:lit | (lit isMemberOf: Symbol)
										ifTrue: [refs add: lit]]]]]].
		Smalltalk allBehaviorsDo: [:class | "collect all unrefs"
			(self hasClamped: class)
				ifFalse:
					[first _ true.
					class selectors do: [:sel | (refs includes: sel)
							ifFalse:
								[method _ class compiledMethodAt: sel.
								(self hasClamped: method)
									ifFalse:
										[first ifTrue:
											[first _ false.
											f cr; cr; nextPutAll: class name; space].
										self clamp: (class compiledMethodAt: sel).
										class organization removeElement: sel.
										f nextPutAll: sel; space]]]]].
		f cr; nextPutAll: '------------'; cr].
	f close
