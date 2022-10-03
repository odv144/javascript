//Ejercicio del zombie se encontraron algunas inconsistencia en el enunciado seria cuestion de determinar algunos datos previos
// por ejemplo no hay forma que en una matriz cuadrada de dimension impar la misma permita que el adn sea valido es decir
//en una matriz de 3x3 es imposible en su diagona principal  sea A y la secundaria sea D
//esa regla solo podria darse en matrices con dimensiones pares es decir 2,4,6,8,36,38

//funcion  para determinar si las diagonales cumplen la condicion establecida
SubProceso rto <-determinarGenZ(matriz,tam)
	definir rto, genZ Como Logico
	definir i,j Como Entero
	definir aux,aux2 Como Caracter
	genZ = Verdadero
	aux = matriz(0,0)
	aux2= matriz(0,tam-1)
	para i<-0 hasta tam-1 Hacer
		para j<-0 hasta tam-1 Hacer
			//diagonal prnucipal
			si matriz(i,j)<> aux y i=j entonces
				genZ = falso			
			FinSi
			//digaonal secunadaria
			si matriz(i,j)<> aux2 y (i+j)=tam-1 Entonces
				genZ = falso
			FinSi
		FinPara
	FinPara
	rto=genZ
	
Fin SubProceso

//funcion para retornar una cadena tipo ADN con valores validos en sus diagonales
SubProceso rto <-generarADN(cantidad)
	definir rto Como caracter
	definir i,j Como Entero
	definir aux,aux2 Como Caracter
	aux=""
	para i<-0 hasta cantidad-1 Hacer
		para j<-0 hasta cantidad-1 Hacer
			//diagonal prnucipal
			si i=j entonces
				aux = aux + "A"			
			sino //digaonal secunadaria
				si (i+j)=cantidad-1 Entonces
					aux = aux + "D"
				sino
					si (i = cantidad-1) Entonces
						aux = aux + "B"
					sino 
						aux = aux + "C"
					FinSi
				FinSi
			FinSi
			
		FinPara
	FinPara
	rto=aux
	
Fin SubProceso


//////////////////////////////////////////////////////////////////////////
//------------------PROGRAMA PRINCIPAL---------------------------------//
Proceso Zombies
	definir adn como caracter
	definir matriz Como Caracter
	definir tam,longAdn Como Entero
	definir flag como logico
	
	Escribir "Ingrese el valor de la matriz"
	leer tam
	adn=generarADN(tam)
	escribir adn
	
	Dimension  matriz[tam,tam]
	
	rellenarM(matriz,tam,adn)
	mostrarM(matriz,tam)
	flag=determinarGenZ(matriz,tam)
	si flag Entonces
		Escribir "Se encontro gen Z en el ADN, el mundo a fue salvado"
	sino 
		Escribir "El genZ no fue encontrado en el ADN"
	FinSi
	
FinProceso
//---------------------------------------------------------------------//
///////////////////////////////////////////////////////////
//Rellena la matriz con el adn informado
SubProceso rellenarM(matriz,tam,adn)
	definir i,j,k Como Entero
	k=0
	para i<- 0 hasta tam-1 hacer
		para j<- 0 hasta tam-1 hacer
			matriz(i,j)=subcadena(adn,k,k)
			k=k+1
		FinPara
	FinPara
FinSubProceso

/////////////////////////////////////////////////////////////
//funcion para mostrar la matriz
SubProceso mostrarM(matriz,tam)
	definir i,j Como Entero
	
	para i<- 0 hasta tam-1 hacer
		para j<- 0 hasta tam-1 hacer
			escribir sin saltar matriz(i,j) "|"
		FinPara
		escribir " "
	FinPara
FinSubProceso	


