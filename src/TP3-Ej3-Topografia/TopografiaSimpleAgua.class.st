Class {
	#name : #TopografiaSimpleAgua,
	#superclass : #TopografiaSimple,
	#category : #'TP3-Ej3-Topografia'
}

{ #category : #boolean }
TopografiaSimpleAgua >> esIgual: unaTopografia [
	^ unaTopografia esIgualAgua
]

{ #category : #boolean }
TopografiaSimpleAgua >> esIgualAgua [ 
	^ true
]

{ #category : #boolean }
TopografiaSimpleAgua >> esIgualTierra [ 
	^false 
]

{ #category : #initialization }
TopografiaSimpleAgua >> initialize [ 
	proporcion := 1
]
