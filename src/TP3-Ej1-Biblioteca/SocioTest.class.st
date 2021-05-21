Class {
	#name : #SocioTest,
	#superclass : #TestCase,
	#instVars : [
		'socio'
	],
	#category : #'TP3-Ej1-Biblioteca-Tests'
}

{ #category : #running }
SocioTest >> setUp [
	socio := Socio nombre: 'Pepe' email: 'pepe@outlook.com'  legajo: '111222'. 
]

{ #category : #tests }
SocioTest >> testEmail [
	self assert: socio email equals: 'pepe@outlook.com'
]

{ #category : #tests }
SocioTest >> testLegajo [
	self assert: (socio legajo) equals: '111222'
]

{ #category : #tests }
SocioTest >> testNombre [
	self assert: (socio nombre) equals: 'Pepe'
]
