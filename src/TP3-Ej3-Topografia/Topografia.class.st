Class {
	#name : #Topografia,
	#superclass : #Object,
	#instVars : [
		'proporcion'
	],
	#category : #'TP3-Ej3-Topografia'
}

{ #category : #boolean }
Topografia >> esIgual: unaTopografia [ 
	^ self subclassResponsibility 
]

{ #category : #boolean }
Topografia >> esIgualAgua [ 
	^ self subclassResponsibility 
]

{ #category : #boolean }
Topografia >> esIgualCompuesta: unaTopografia [
	^ self subclassResponsibility 
]

{ #category : #boolean }
Topografia >> esIgualTierra [ 
	^ self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> proporcion [
	^ self subclassResponsibility 
]
