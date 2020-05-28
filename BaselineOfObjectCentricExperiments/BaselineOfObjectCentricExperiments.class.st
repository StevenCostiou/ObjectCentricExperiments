Class {
	#name : #BaselineOfObjectCentricExperiments,
	#superclass : #BaselineOf,
	#category : #BaselineOfObjectCentricExperiments
}

{ #category : #baselines }
BaselineOfObjectCentricExperiments >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'ObjectCentricExperiments' ]
]
