Class {
	#name : #TopografiaCompuesta,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #'TP3-Ej3-Topografia'
}

{ #category : #'instance creation' }
TopografiaCompuesta class >> newTopografias: unasTopografias [
	^ self new newTopografias: unasTopografias 
]

{ #category : #'adding item' }
TopografiaCompuesta >> agregarTopografia: unaTopografia [
	self topografia size < 4
		ifTrue: [ topografias add: unaTopografia ]
]

{ #category : #calculations }
TopografiaCompuesta >> calcularProporcionAgua [
	^(topografias
		sum: [ :topografia | topografia calcularProporcionAgua ]) / 4.
]

{ #category : #boolean }
TopografiaCompuesta >> esIgual: unaTopografia [ 
	^ unaTopografia esIgualCompuesta: self
]

{ #category : #boolean }
TopografiaCompuesta >> esIgualAgua [ 
	^ false
]

{ #category : #boolean }
TopografiaCompuesta >> esIgualCompuesta: unaTopografia [
	^ (1 to: self estructuraTopografia size)
		allSatisfy: [ :i | (self estructuraTopografia at: i) esIgual: (unaTopografia estructuraTopografia at: i) ]
]

{ #category : #boolean }
TopografiaCompuesta >> esIgualTierra [ 
	^false
]

{ #category : #accessing }
TopografiaCompuesta >> estructuraTopografia [
	^self topografia asArray
]

{ #category : #'instance creation' }
TopografiaCompuesta >> newTopografias: unasTopografias [
	topografias := unasTopografias takeFirst: 4.
]

{ #category : #accessing }
TopografiaCompuesta >> proporcion [
	^ self calcularProporcionAgua
]

{ #category : #accessing }
TopografiaCompuesta >> topografia [
	^topografias
]
