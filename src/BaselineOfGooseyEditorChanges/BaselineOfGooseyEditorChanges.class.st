Class {
	#name : #BaselineOfGooseyEditorChanges,
	#superclass : #BaselineOf,
	#category : #BaselineOfGooseyEditorChanges
}

{ #category : #baseline }
BaselineOfGooseyEditorChanges >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GooseyEditor'
		]
]
