Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'socios',
		'socio1',
		'socio2',
		'exporter',
		'exporterNJSON',
		'bibliotecaVoorhes',
		'bibliotecaNeoJSON'
	],
	#category : #'TP3-Ej1-Biblioteca-Tests'
}

{ #category : #running }
BibliotecaTest >> setUp [
	socio1 := Socio
		nombre: 'Pepe'
		email: 'pepe@outlook.com'
		legajo: '111222'.
	socio2 := Socio
		nombre: 'Pepito'
		email: 'pepito@outlook.com'
		legajo: '222111'.
	socios := OrderedCollection with: socio1 with: socio2.
	exporter := VoorheesExporter new.
	bibliotecaVoorhes := Biblioteca new: exporter.
	bibliotecaVoorhes socios: socios.
	exporterNJSON := NeoJSONAdapter new.
	bibliotecaNeoJSON := Biblioteca new: exporterNJSON.
	bibliotecaNeoJSON socios: socios.
]

{ #category : #tests }
BibliotecaTest >> testAgregarSocio [
	| socio3 |
	socio3 := Socio
		nombre: 'Socio3'
		email: 'prueba@gmail.com'
		legajo: '12358'.
	self assert: bibliotecaVoorhes socios size equals: 2.
	self deny: (bibliotecaVoorhes  socios includes: socio3).
	bibliotecaVoorhes agregarSocio: socio3.
	self assert: bibliotecaVoorhes socios size equals: 3.
	self assert: (bibliotecaVoorhes  socios includes: socio3)
]

{ #category : #tests }
BibliotecaTest >> testExportarSocios [
	self
		assert: bibliotecaVoorhes exportarSocios
		equals:
			'[
	{' , Character cr asString , '		"nombre" : "' , socio1 nombre , '",'
				, Character cr asString , '		"email" : "' , socio1 email , '",'
				, Character cr asString , '		"legajo" : "' , socio1 legajo , '"'
				, Character cr asString
				,
					'	},
	{' , Character cr asString , '		"nombre" : "' , socio2 nombre , '",'
				, Character cr asString , '		"email" : "' , socio2 email , '",'
				, Character cr asString , '		"legajo" : "' , socio2 legajo , '"'
				, Character cr asString
				,
					'	}
]'.
	self
		assert: bibliotecaNeoJSON exportarSocios
		equals:
			'[
	{' , Character cr asString , '		"nombre" : "' , socio1 nombre , '",'
				, Character cr asString , '		"email" : "' , socio1 email , '",'
				, Character cr asString , '		"legajo" : "' , socio1 legajo , '"'
				, Character cr asString
				,
					'	},
	{' , Character cr asString , '		"nombre" : "' , socio2 nombre , '",'
				, Character cr asString , '		"email" : "' , socio2 email , '",'
				, Character cr asString , '		"legajo" : "' , socio2 legajo , '"'
				, Character cr asString
				,
					'	}
]'
]

{ #category : #tests }
BibliotecaTest >> testExporter [
	self assert: bibliotecaVoorhes exporter equals: exporter
]

{ #category : #tests }
BibliotecaTest >> testSocios [
	self assert: bibliotecaVoorhes socios size equals: 2.
	self assert: (bibliotecaVoorhes socios includes: socio1).
	self assert: (bibliotecaVoorhes socios includes: socio2)
]
