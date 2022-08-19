pullBottomToTop
	"Make the last scheduled view which wants control be the first one.  Used for implementing the message under to a scheduled controller."

	scheduledControllers reverseDo:
		[:controller |
		(controller isControlWanted and: [controller ~~ screenController]) ifTrue:
			[^scheduledControllers addFirst: (scheduledControllers remove: controller)]]
