//CONSIDERACIONES DEL EJERCICIO
//El gen es existe cuando las diagonales poseen la misma letra en la diagonal principal y la misma letra en la secundaria
//En caso de matrices de dimensiones impares ambas diagonales deben cumplirse
//Se realizo el algoritmo para que este funcione para cualquier dimension de matriz siempre que la cadena ADN la sea valida 
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
SubProceso rto <-generarADN()
	definir rto,adn Como caracter
	//adn="ACDDCADBCDABDBBA"     //4x4
	adn = "ABABABABA"		//3x3 valida
	adn = "ABBBABAAA"		//3X3 NO VALIDA
	adn = "BBCBCAAAAABBBBBDDDDDAAAAA" //5x5 no valida
	adn = "BBCBBABABABBBBBDBDBDBAAAB" //5x5 valida
	adn = "BBCBBABABABBBBBDBDBDBAAABBBCBBABABABBBBBDBDBDBAAAB" //10x10 valida
	adn="CDDACCACCACAAABC"

	rto=adn
	
Fin SubProceso
SubProceso rto <- calculoDimension(adn)
	definir rto  Como Entero
	definir aux, tam como entero
	aux =trunc(raiz(Longitud(adn)))
	escribir "valor de aux" aux
	si (Longitud(adn)=(aux*aux)) Entonces
		escribir "valor de rto" trunc(aux)
		rto = trunc(aux)
	FinSi
	
	
FinSubProceso

//////////////////////////////////////////////////////////////////////////
//------------------PROGRAMA PRINCIPAL---------------------------------//
Proceso Zombies
	definir adn como caracter
	definir matriz Como Caracter
	definir tam,longAdn Como Entero
	definir flag como logico
	
	adn=generarADN()
	escribir adn
	
	tam = calculoDimension(adn)
	si tam <> 0 Entonces
		Dimension  matriz[tam,tam]
		
		rellenarM(matriz,tam,adn)
		mostrarM(matriz,tam)
		flag=determinarGenZ(matriz,tam)
		si flag Entonces
			Escribir "Se encontro gen Z en el ADN, el mundo a fue salvado"
		sino 
			Escribir "El genZ no fue encontrado en el ADN"
		FinSi
	sino 
		Escribir "Las dimensiones no son validas"
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


