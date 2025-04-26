Extension { #name : #GtPharoSourceCoder }

{ #category : #'*GooseyEditor' }
GtPharoSourceCoder >> emacsMovement: anAst into: coderAddOns from: aCoderViewModel [
	<gtAstCoderAddOns: 69>
	coderAddOns addShortcuts: GooseEmacsMovementShortcuts shortcuts.
]

{ #category : #'*GooseyEditor' }
GtPharoSourceCoder >> paredit: anAST into: coderAddOns from: aCoderViewModel [
	<gtAstCoderAddOns: 7>
	| selectedNode |
	selectedNode := (self nodeFrom: aCoderViewModel).
	coderAddOns addShortcut: GoosePareditForwardShortcut new.
	coderAddOns addShortcut: GoosePareditBackwardShortcut new
]
