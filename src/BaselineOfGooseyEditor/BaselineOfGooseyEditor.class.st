Class {
	#name : #BaselineOfGooseyEditor,
	#superclass : #BaselineOf,
	#category : #BaselineOfGooseyEditor
}

{ #category : #baseline }
BaselineOfGooseyEditor >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GooseyEditor'
		]
]
