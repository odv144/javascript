<<<<<<< HEAD
Proceso Guia4
	definir flag Como Logico
	flag = verdadero
	mientras flag hacer
		flag = menu()
	FinMientras
	
FinProceso
//*****************************inico menu******************************************************
funcion flag <- menu()
	definir flag Como Logico
	definir op como entero
	flag = verdadero
	Limpiar Pantalla
	Escribir "01 - Ejercicio 6"
	Escribir "02 - Ejercicio 7"
	Escribir "99 - Para salir"
	
	leer op
	segun op Hacer
		1:
			ejercicio6()
		2: 
			ejercicio7()
		99:
			flag=falso
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
FinSubProceso

//*****************************inicio ejercicio 6 ***************************************************
SubProceso ejercicio6()
	definir vector,str,simbolo Como caracter
	definir i,pos como entero
	Dimension vector[20]
	Escribir "Ingrese frase a cargar"
	leer str
	para i<- 0 hasta 19 Hacer
		si (i <= Longitud(str)-1) entonces
			vector[i] = subcadena(str,i,i)
		SiNo
			vector[i]=" "
		FinSi
		
	FinPara
	
	Escribir sin saltar "Ingrese el caracter que desea"
	leer simbolo
	Escribir sin saltar "Ingrese la posicion a insertar"
	leer pos
	si(pos<20)Entonces
		si ( (vector[pos] = " " )) entonces
			vector[pos]=simbolo
		SiNo
			Escribir "La posición no se encuentra vacia"
		FinSi
	SiNo
		Escribir "Posicion fuera de rango"
	FinSi
	
	para i<- 0 hasta 19 Hacer
		Escribir sin saltar vector[i] 
	FinPara
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla
Fin SubProceso
//***************************inicio ejercicio 7 ********************************************************
SubProceso ejercicio7 
	definir v1,v2 Como entero
	definir i,can como entero
	definir distintos Como Logico
	Escribir "Ingrese cantidad de elementos del vector"
	leer can
	Dimension v1[can]
	Dimension v2[can]
	distintos = falso
	para i<- 0 hasta can-1 Hacer
		v1[i] = Aleatorio(1,100)
		v2[i] = Aleatorio(1,100)
	FinPara
	
	para i<- 0 hasta can-1 Hacer
		si (v1[i] <> v2[i] )Entonces
			distintos=verdadero
		FinSi
	FinPara
	si distintos Entonces
		Escribir "Los vectores cargados aleatoriamente son distintos"
	SiNo
		Escribir "Los vectores son iguales"
	FinSi
	Escribir "--------------------------------------"
	Escribir "El vector 1 fue cargado con "
	para i<- 0 hasta can-1 Hacer
		escribir sin saltar v1[i] " "
	FinPara
	Escribir ""
	Escribir "--------------------------------------"
	Escribir "El vector 2 fue cargado con "
	para i<- 0 hasta can-1 Hacer
		escribir sin saltar v2[i] " "
	finpara
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
=======
Proceso Guia4
	definir flag Como Logico
	flag = verdadero
	mientras flag hacer
		flag = menu()
	FinMientras
	
FinProceso
//*****************************inico menu******************************************************
funcion flag <- menu()
	definir flag Como Logico
	definir op como entero
	flag = verdadero
	Limpiar Pantalla
	Escribir "01 - Ejercicio 6"
	Escribir "02 - Ejercicio 7"
	Escribir "99 - Para salir"
	
	leer op
	segun op Hacer
		1:
			ejercicio6()
		2: 
			ejercicio7()
		99:
			flag=falso
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
FinSubProceso

//*****************************inicio ejercicio 6 ***************************************************
SubProceso ejercicio6()
	definir vector,str,simbolo Como caracter
	definir i,pos como entero
	Dimension vector[20]
	Escribir "Ingrese frase a cargar"
	leer str
	para i<- 0 hasta 19 Hacer
		si (i <= Longitud(str)-1) entonces
			vector[i] = subcadena(str,i,i)
		SiNo
			vector[i]=" "
		FinSi
		
	FinPara
	
	Escribir sin saltar "Ingrese el caracter que desea"
	leer simbolo
	Escribir sin saltar "Ingrese la posicion a insertar"
	leer pos
	si(pos<20)Entonces
		si ( (vector[pos] = " " )) entonces
			vector[pos]=simbolo
		SiNo
			Escribir "La posición no se encuentra vacia"
		FinSi
	SiNo
		Escribir "Posicion fuera de rango"
	FinSi
	
	para i<- 0 hasta 19 Hacer
		Escribir sin saltar vector[i] 
	FinPara
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla
Fin SubProceso
//***************************inicio ejercicio 7 ********************************************************
SubProceso ejercicio7 
	definir v1,v2 Como entero
	definir i,can como entero
	definir distintos Como Logico
	Escribir "Ingrese cantidad de elementos del vector"
	leer can
	Dimension v1[can]
	Dimension v2[can]
	distintos = falso
	para i<- 0 hasta can-1 Hacer
		v1[i] = Aleatorio(1,100)
		v2[i] = Aleatorio(1,100)
	FinPara
	
	para i<- 0 hasta can-1 Hacer
		si (v1[i] <> v2[i] )Entonces
			distintos=verdadero
		FinSi
	FinPara
	si distintos Entonces
		Escribir "Los vectores cargados aleatoriamente son distintos"
	SiNo
		Escribir "Los vectores son iguales"
	FinSi
	Escribir "--------------------------------------"
	Escribir "El vector 1 fue cargado con "
	para i<- 0 hasta can-1 Hacer
		escribir sin saltar v1[i] " "
	FinPara
	Escribir ""
	Escribir "--------------------------------------"
	Escribir "El vector 2 fue cargado con "
	para i<- 0 hasta can-1 Hacer
		escribir sin saltar v2[i] " "
	finpara
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
>>>>>>> 7262e2303717d471d8defd79b9ef7830226028b4
	