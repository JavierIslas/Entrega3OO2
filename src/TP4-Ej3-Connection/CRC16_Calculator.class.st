Class {
	#name : #'CRC16_Calculator',
	#superclass : #'CRC_Calculator',
	#category : #'TP4-Ej3-Connection'
}

{ #category : #behavior }
CRC16_Calculator >> crcFor: data [
	^ CRC crc16FromCollection: data 
]
