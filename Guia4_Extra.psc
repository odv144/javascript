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
			ejercicio1()
		2: 
			ejercicio2()
		3: 
			ejercicio3()	
		4: 
			ejercicio4()
		5: 
			ejercicio5()
		6: 
			ejercicio6()	
		7: 
			ejercicio7()
		8: 
			ejercicio8()
		9: 
			ejercicio9()
		10: 
			ejercicio10()
		11: 
			ejercicio11()
		12: 
			ejercicio12()
		13: 
			ejercicio13()
		14: 
			ejercicio14()	
		15: 
			ejercicio15()
		16: 
			ejercicio16()
		99:
			flag=falso
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
FinSubProceso

//*****************************inicio ejercicio 1 ***************************************************
SubProceso ejercicio1()
	definir vector1, vector2 Como entero
	definir a como entero
	Dimension vector1[5], vector2[5]
	para a<- 0 hasta 4 Hacer
		vector1[a]=Aleatorio(0,100)	
		vector2[a]=Aleatorio(0,100)	
	FinPara
	Escribir "Valores del vector 1"
	para a<- 0 hasta 4 Hacer
		Escribir sin saltar vector1[a] "|"	
	FinPara
	Escribir ""
	Escribir "Valores del vector 2"
	para a<- 0 hasta 4 Hacer
		Escribir sin saltar vector2[a] "|"	
	FinPara
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla
Fin SubProceso
//***************************inicio ejercicio 2 ********************************************************
SubProceso ejercicio2() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 3 ********************************************************
SubProceso ejercicio3() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso	
//***************************inicio ejercicio 4 ********************************************************
SubProceso ejercicio4() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 5 ********************************************************
SubProceso ejercicio5() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 6********************************************************
SubProceso ejercicio6() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 7 ********************************************************
SubProceso ejercicio7() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 8 ********************************************************
SubProceso ejercicio8() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 9 ********************************************************
SubProceso ejercicio9() 	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 10 ********************************************************
SubProceso ejercicio10() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 11 ********************************************************
SubProceso ejercicio11() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 12 ********************************************************
SubProceso ejercicio12() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 13 ********************************************************
SubProceso ejercicio13() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 14 ********************************************************
SubProceso ejercicio14() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 15 ********************************************************
SubProceso ejercicio15() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 16 ********************************************************
SubProceso ejercicio16() 
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso