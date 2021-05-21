Class {
	#name : #NeoJSONAdapter,
	#superclass : #Exporter,
	#category : #'TP3-Ej1-Biblioteca'
}

{ #category : #export }
NeoJSONAdapter >> export: socios [
	
	^ NeoJSONWriter toStringPretty: (socios collect: [:socio | self exportSocio: socio])
]

{ #category : #exporting }
NeoJSONAdapter >> exportSocio: socio [
	^ "socios
		collect: [ :each |" 
			Dictionary new
				at: #nombre put: socio nombre;
				at: #email put: socio email;
				at: #legajo put: socio legajo;
				yourself "]"
]
