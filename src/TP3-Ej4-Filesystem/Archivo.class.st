Class {
	#name : #Archivo,
	#superclass : #Filesystem,
	#category : #'TP3-Ej4-Filesystem'
}

{ #category : #'as yet unclassified' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	^ self new llamado: unString creadoEl: unaFecha kBytes: unNumero 
]

{ #category : #accessing }
Archivo >> archivoMasGrande [ 
	^self
]

{ #category : #accessing }
Archivo >> archivoMasNuevo [ 
	^self
]

{ #category : #accessing }
Archivo >> archivos [
	^self
]

{ #category : #testing }
Archivo >> isFile [ 
	^true
]

{ #category : #accessing }
Archivo >> listadoDeContenido [
	^ '/', self nombre , Character cr asString
]

{ #category : #initialization }
Archivo >> llamado: unString creadoEl: unaFecha kBytes: unNumero [ 
	nombre := unString.
	fechaCreacion := unaFecha.
	tamanio := unNumero
]

{ #category : #accessing }
Archivo >> tamanio [
	^ tamanio "/1000"
]
