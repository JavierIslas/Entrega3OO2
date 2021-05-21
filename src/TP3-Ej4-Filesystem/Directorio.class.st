Class {
	#name : #Directorio,
	#superclass : #Filesystem,
	#instVars : [
		'contenido'
	],
	#category : #'TP3-Ej4-Filesystem'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
^self new llamado: unString creadoEl: unaFecha  
]

{ #category : #adding }
Directorio >> agregar: unArchivo [
	contenido add: unArchivo
]

{ #category : #accessing }
Directorio >> archivoMasGrande [
	self contenido isEmpty 
	ifTrue: [ ^nil ].
	^ ((self contenido collect: [ :e | e archivoMasGrande ])
		asSortedCollection: [ :a1 :a2 | a1 tamanio > a2 tamanio ]) first
]

{ #category : #accessing }
Directorio >> archivoMasNuevo [
	self contenido isEmpty
		ifTrue: [ ^ nil ].
	^ ((self contenido collect: [ :e | e archivoMasNuevo ])
		asSortedCollection: [ :a1 :a2 | a1 fechaCreacion > a2 fechaCreacion ])
		first
]

{ #category : #accessing }
Directorio >> archivos [
	^ self contenido select: [ :c | c isFile ]
]

{ #category : #accessing }
Directorio >> contenido [
	^ contenido
]

{ #category : #accessing }
Directorio >> directorios [
	^ self contenido reject: [ :a | a isFile ].
]

{ #category : #testing }
Directorio >> isFile [
	^false
]

{ #category : #accessing }
Directorio >> listadoDeContenido [
	^ (self listadoDeDirectorio: '') trim
]

{ #category : #accessing }
Directorio >> listadoDeDirectorio: root [
	self contenido isEmpty
		ifTrue: [ ^ root , '/' , self nombre ].
	self directorios isEmpty
		ifTrue: [ ^ root , (self nombreYCantidadArchivos: self archivos) ].
	^
	root , (self nombreYCantidadArchivos: self archivos)
		, Character cr asString
		,
			(self directorios
				inject: ''
				into:
					[ :path :d | path , (d listadoDeDirectorio: root , '/' , self nombre) ])
		, Character cr asString
]

{ #category : #initialization }
Directorio >> llamado: unString creadoEl: unaFecha [
	contenido := OrderedCollection new.
	nombre := unString.
	fechaCreacion := unaFecha
]

{ #category : #accessing }
Directorio >> nombreYCantidadArchivos: files [
	^ '/' , self nombre, ' (' , files size asString , ' archivos)'
]

{ #category : #sorting }
Directorio >> ordenar: aCollection [
	^ aCollection asSortedCollection sortBlock: [:a1 :a2 | a1 nombre <= a2 nombre].
]

{ #category : #accessing }
Directorio >> tamanio [
	self contenido isEmpty 
	ifTrue: [ ^32 ].
	^ self contenido
		inject: 32
		into: [ :suma :each | suma + each tamanio ]
]
