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

Proceso Guia4
	definir flag Como Logico
	flag = verdadero
	mientras flag hacer
		flag = menu()
	FinMientras
	
FinProceso

funcion flag <- menu()
	definir flag Como Logico
	definir op como entero
	flag = verdadero
	Limpiar Pantalla
	Escribir "01 - Ejercicio 6"
	Escribir "99 - Para salir"
	
	leer op
	segun op Hacer
		1:
			ejercicio6()
		999:
			flag=falso
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
FinSubProceso

