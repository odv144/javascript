Algoritmo sin_titulo
	definir tablero, palabra Como Caracter
	definir f,c, posicionR Como Entero
	f=9
	c=12
	Dimension tablero[f,c]
	Dimension palabra[9]
	dimension posicionR[9]
	cargarPalabras(palabra,f)
	
	inicializarMatriz(tablero,f,c)
	
	agregarPalabra(tablero,f,c,palabra)
	
	buscarR(posicionR,f,palabra)
	
	acomodarPalabra(tablero,f,c,palabra,posicionR)
	
	imprimirMatriz[tablero,f,c]
FinAlgoritmo

SubProceso cargarPalabras(palabra,f)
	definir i como entero
	para i<-0 hasta f-1 Hacer
		Escribir sin saltar "Ingrese la palabra "
		leer palabra[i]
		palabra[i]= Mayusculas(palabra[i])
	FinPara
FinSubProceso

SubProceso inicializarMatriz(tablero,f,c)
	definir i,j como entero
	para i<-0 hasta (f-1) Hacer
		para j<- 0 hasta (c-1) hacer
			tablero[i,j]="*"
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(tablero,f,c)
	definir i,j como entero
	para i<-0 hasta f-1 Hacer
		para j<- 0 hasta c-1 hacer
			Escribir sin saltar " " tablero[i,j] " "  
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso agregarPalabra(tablero,f,c,palabra)
	definir i,j como entero
	para i<-0 hasta f-1 Hacer
		para j<- 0 hasta c-1 hacer
			si (j < Longitud(palabra[i])) entonces
				tablero[i,j]= subcadena(palabra[i],j,j)
			finsi
		FinPara
	FinPara
FinSubProceso

SubProceso buscarR(posicionR,f,palabra)
	definir i,j Como Entero
	
	para i<- 0 hasta f-1 Hacer
		para j<- longitud(palabra[i]) hasta 0 Con Paso -1 Hacer
			si (Subcadena(palabra[i],j,j)= "R" ) Entonces
				posicionR[i]=j
			FinSi
		FinPara
	FinPara
	
FinSubProceso

SubProceso acomodarPalabra(tablero,f,c,palabra,posicionR)
	definir i,j, aux, x Como Entero
	para i<- 0 hasta f-1 Hacer
		para j<-0 hasta c-1 Hacer
			aux = 5 - posicionR[i]
				para x<- 0 hasta c-1 Hacer
					si x<aux o x>= (Longitud(palabra[i])+aux) entonces //rellenando con aasteriscos y corriendo la palabra
						tablero[i,x]="*"
					SiNo
						tablero[i,x] = Subcadena(palabra[i],x-aux,x-aux)
					FinSi
				FinPara
		
			
		FinPara
	FinPara
	
FinSubProceso
