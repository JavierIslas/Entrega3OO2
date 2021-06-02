Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#instVars : [
		'proporcion'
	],
	#category : #'TP3-Ej3-Topografia'
}

{ #category : #accessing }
TopografiaSimple >> calcularProporcionAgua [
	^proporcion
]

{ #category : #boolean }
TopografiaSimple >> esIgual: unaTopografia [
	^ self subclassResponsibility
]

{ #category : #boolean }
TopografiaSimple >> esIgualAgua [
	^ self subclassResponsibility
]

{ #category : #boolean }
TopografiaSimple >> esIgualCompuesta: unaTopografia [ 
	^ false 
]

{ #category : #boolean }
TopografiaSimple >> esIgualTierra [
	^ self subclassResponsibility
]

{ #category : #accessing }
TopografiaSimple >> topografia [
	^self
]
