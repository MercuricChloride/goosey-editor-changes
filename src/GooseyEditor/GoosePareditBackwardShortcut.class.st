Class {
	#name : #GoosePareditBackwardShortcut,
	#superclass : #GtPareditMovementShortcut,
	#category : #'GooseyEditor-Shortcuts'
}

{ #category : #'as yet unclassified' }
GoosePareditBackwardShortcut >> initialize [
	super initialize.
	combination := BlKeyCombination builder alt control b build
]

{ #category : #'as yet unclassified' }
GoosePareditBackwardShortcut >> performOnEditor: aBrTextEditor element: aBrEditorElement coderViewModel: aSourceCoderViewModel dueTo: aShortcutEvent [
	self
		forEditor: aBrTextEditor
		selectionIntervalDo: [ :aSelectionInterval |
			aSourceCoderViewModel coder
				moveStatementsOrCascadesUpWithin: aSelectionInterval
				in: aSourceCoderViewModel ]
		orCursorStringPositionDo: [ :aCursorTextPosition |
			self moveBackwardFrom: aSourceCoderViewModel position: aCursorTextPosition ]
]
