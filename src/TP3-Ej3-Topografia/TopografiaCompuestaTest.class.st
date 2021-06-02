Class {
	#name : #TopografiaCompuestaTest,
	#superclass : #TestCase,
	#instVars : [
		'topografiaCompuesta',
		'topografias',
		'topoIgual',
		'topoDistinta',
		'agua',
		'tierra'
	],
	#category : #'TP3-Ej3-Topografia-Tests'
}

{ #category : #running }
TopografiaCompuestaTest >> setUp [
	self setUpTopografiasCompuestas.
	topografiaCompuesta := TopografiaCompuesta
		newTopografias: topografias.
	agua := TopografiaSimpleAgua new.
	tierra := TopografiaSimpleTierra new
]

{ #category : #initialization }
TopografiaCompuestaTest >> setUpTopografiasCompuestas [
	topografias := OrderedCollection
		with: TopografiaSimpleAgua new
		with: TopografiaSimpleTierra new
		with: TopografiaSimpleAgua new
		with: TopografiaSimpleTierra new.
	topoIgual := OrderedCollection
		with: TopografiaSimpleAgua new
		with: TopografiaSimpleTierra new
		with: TopografiaSimpleAgua new
		with: TopografiaSimpleTierra new.
	topoDistinta :=  OrderedCollection
		with: TopografiaSimpleTierra  new
		with: TopografiaSimpleTierra new
		with: TopografiaSimpleAgua new
		with: TopografiaSimpleTierra new.
]

{ #category : #tests }
TopografiaCompuestaTest >> testCalcularProporcionAgua [
	self assert: (topografiaCompuesta calcularProporcionAgua) equals: 0.5
]

{ #category : #tests }
TopografiaCompuestaTest >> testCalcularProporcionTierra [
	self assert: (topografiaCompuesta calcularProporcionTierra) equals: 0.5
]

{ #category : #tests }
TopografiaCompuestaTest >> testEsIgual [
	| igualCompuesta distintaCompuesta |
	igualCompuesta := TopografiaCompuesta newTopografias: topoIgual.
	distintaCompuesta := TopografiaCompuesta newTopografias: topoDistinta.
	self assert: (topografiaCompuesta esIgual: igualCompuesta).
	self deny: (topografiaCompuesta esIgual: distintaCompuesta).
	self deny: (topografiaCompuesta esIgual: agua).
	self deny: (topografiaCompuesta esIgual: tierra )
]
