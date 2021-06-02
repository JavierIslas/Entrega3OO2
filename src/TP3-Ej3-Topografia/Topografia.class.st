Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3-Ej3-Topografia'
}

{ #category : #accessing }
Topografia >> calcularProporcionAgua [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> calcularProporcionTierra [
	^ 1 - self calcularProporcionAgua
]

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
