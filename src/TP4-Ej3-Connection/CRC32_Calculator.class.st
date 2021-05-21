Class {
	#name : #'CRC32_Calculator',
	#superclass : #'CRC_Calculator',
	#category : #'TP4-Ej3-Connection'
}

{ #category : #behavior }
CRC32_Calculator >> crcFor: data [
	^ CRC crc32FromCollection: data
]
