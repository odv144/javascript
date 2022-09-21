Proceso Guia4_Extras
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
	Escribir "Resolucion Ejercicios Extra Guia 4"
	Escribir "01 - Rellenar 2 Vectores"
	Escribir "02 - Rellenar 1 Vector de tamaño N"
	Escribir "03 - Ejercicio 3"
	Escribir "04 - Ejercicio 4 100 estudiantes"
	Escribir "05 - Mejora del ejercicio 6"
	Escribir "06 - Diferencia entre mas chico y mas grande"
	Escribir "07 - Funcion recursiva de arreglo"
	Escribir "08 - Producto de un vector"
	Escribir "-------Arreglos: Matrices----------------"
	Escribir "09 - Rellenar y Mostrar matriz de valor aleatorio"
	Escribir "10 - Matriz Traspuesta"
	Escribir "11 - Marco de matriz"
	Escribir "12 - Multiplicar 2 Matriz de 3x3"
	Escribir "13 - Suma de filas"
	Escribir "14 - Multiplicacion matricial"
	Escribir "15 - Venta de productos"
	Escribir "16 - Distribuidora Nescafé"
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
	