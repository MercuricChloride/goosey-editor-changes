Class {
	#name : #GtPareditMovementShortcut,
	#superclass : #GtSourceCoderShortcut,
	#category : #'GooseyEditor-Shortcuts'
}

{ #category : #accessing }
GtPareditMovementShortcut >> description [
	^ 'Jumps forward by an ast node'
]

{ #category : #accessing }
GtPareditMovementShortcut >> initialize [
	super initialize.
	
	combination := BlKeyCombination builder alt control f build
]

{ #category : #'as yet unclassified' }
GtPareditMovementShortcut >> moveBackwardFrom: aSourceCoderViewModel position: aCursorTextPosition [
	|node|
	node := (aSourceCoderViewModel coder nodeAt: aCursorTextPosition).
	node ifNil: [^ self].
	aSourceCoderViewModel moveCursorTo: (self previousNode: node) startPosition - 1
]

{ #category : #'as yet unclassified' }
GtPareditMovementShortcut >> moveForwardFrom: aSourceCoderViewModel position: aCursorTextPosition [
	|node|
	node := (aSourceCoderViewModel coder nodeAt: aCursorTextPosition).
	aSourceCoderViewModel moveCursorTo: (self nextNode: node) stopPosition
]

{ #category : #accessing }
GtPareditMovementShortcut >> name [
	^ 'Paredit Movement'
]

{ #category : #'as yet unclassified' }
GtPareditMovementShortcut >> nextNode: aNode [
	^ aNode nodeAfter ifNil: [aNode children
		ifEmpty: [ aNode parent ]
		ifNotEmpty: [ aNode children first]]
]

{ #category : #accessing }
GtPareditMovementShortcut >> performOnEditor: aBrTextEditor element: aBrEditorElement coderViewModel: aSourceCoderViewModel dueTo: aShortcutEvent [
	self
		forEditor: aBrTextEditor
		selectionIntervalDo: [ :aSelectionInterval |
			aSourceCoderViewModel coder
				moveStatementsOrCascadesUpWithin: aSelectionInterval
				in: aSourceCoderViewModel ]
		orCursorStringPositionDo: [ :aCursorTextPosition |
			self moveForwardFrom: aSourceCoderViewModel position: aCursorTextPosition ]
]

{ #category : #'as yet unclassified' }
GtPareditMovementShortcut >> previousNode: node [
	^ node nodeBefore ifNil: [
		node
	]
]
