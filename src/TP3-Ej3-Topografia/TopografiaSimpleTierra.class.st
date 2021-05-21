Class {
	#name : #TopografiaSimpleTierra,
	#superclass : #TopografiaSimple,
	#category : #'TP3-Ej3-Topografia'
}

{ #category : #boolean }
TopografiaSimpleTierra >> esIgual: unaTopografia [
	^ unaTopografia esIgualTierra
]

{ #category : #boolean }
TopografiaSimpleTierra >> esIgualAgua [ 
	^false 
]

{ #category : #boolean }
TopografiaSimpleTierra >> esIgualTierra [ 
	^ true
]

{ #category : #initialization }
TopografiaSimpleTierra >> initialize [
	proporcion := 0
]
