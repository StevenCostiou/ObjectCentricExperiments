Class {
	#name : #Task1,
	#superclass : #TestCase,
	#instVars : [
		'metalink',
		'nodes'
	],
	#category : #ObjectCentricExperiments
}

{ #category : #running }
Task1 >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	ReflectivityExamples2 new removeNewMethodWithInstVarAccess.
	metalink := MetaLink new.	
	nodes := metalink nodes
]

{ #category : #running }
Task1 >> tearDown [ 
	ReflectivityExamples2 new removeNewMethodWithInstVarAccess.
	metalink uninstall.
	nodes := nil.
	super tearDown
]

{ #category : #tests }
Task1 >> testCollectionContents [
	self assertEmpty: nodes.

	"We install the metalink on the #instVar instance variable of class ReflectivityExamples2.
	There are 4 accesses to that variable in that class."
	ReflectivityExamples2
		link: metalink
		toSlotNamed: #instVar
		option: #all.

	"There should be 4 nodes in the metalink nodes collection"
	self assert: nodes size equals: 4.

	"We generate a method with 4 four more accesses to #instVar"
	ReflectivityExamples2 new generateNewMethodWithInstVarAccess.

	"There should be 4 more nodes in the metalink nodes collection"
	self assert: nodes size equals: 8
]
