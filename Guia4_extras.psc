//**********************funcion relleno*******************
SubProceso tabulado<- rellenarEspacios(contenido)
	definir str,tabulado, terminado Como Caracter
	definir x,pos, espacio Como Entero
	espacio = 15
	pos = trunc((espacio - Longitud(contenido))/2)
	Dimension  str[espacio]
	para x<-0 hasta espacio-1 Hacer
		str[x]=" "
	FinPara
	para x<- 0 hasta longitud(contenido)-1  hacer
		str[x+pos] = subcadena(contenido,x,x) 
	Finpara
	terminado=""
	para x<- 0 hasta espacio-1 Hacer
		terminado = terminado + str[x]
	FinPara
	tabulado = terminado
FinSubProceso
//*************************************************************************************************************
//FUNCION PARA ACOMODAR CUALQUIER CADENA PASANDO COMO DATO LOS ESPACIOS Y SI QUIERO AGREGAR UN SIMBOLO SEPARADO
SubProceso rta<- rellenarEspaciosGral(dato,cantidad,simbolo)
//	definir strDato,str, terminado, rta Como Caracter
//	definir x,pos Como Entero
//	strDato = simbolo+ConvertirATexto(dato)+simbolo
//	pos = trunc((cantidad - Longitud(strDato))/2)	// Obtengo la posicion como para centrar entre los simbolos ej --345--
//	Dimension  str[cantidad]		//dimensiono un vector para con la cantidad de espacios que tabulara
//	para x<-0 hasta cantidad-1 Hacer	
//		str[x]=" "
//	FinPara
//	para x<- 0 hasta longitud(strDato)-1  hacer
//		str[x+pos] = subcadena(strDato,x,x) 
//	Finpara
//	terminado=""
//	para x<- 0 hasta cantidad-1 Hacer
//		terminado = terminado + str[x]
//	FinPara
	//	rta = terminado
	definir strDato,str, terminado, rta Como Caracter
	definir x,pos Como Entero
	strDato = simbolo+ConvertirATexto(dato)+simbolo
	pos = trunc((cantidad - Longitud(strDato))/2)	// Obtengo la posicion como para centrar entre los simbolos ej --345--
	Dimension  str[cantidad]		//dimensiono un vector para con la cantidad de espacios que tabulara
	para x<-0 hasta cantidad-1 Hacer	
		si x<pos o x>longitud(strDato)-1 Entonces
			str[x]=" "
		sino 
			str[x+pos] = subcadena(strDato,x,x)
		FinSi
		
		
	FinPara
	
	terminado=""
	para x<- 0 hasta cantidad-1 Hacer
		terminado = terminado + str[x]
	FinPara
	rta = terminado
	
FinSubProceso

//-----------------INICIO ALGORITMO PRINCIPAL-----------------------------------------------------------
Proceso Guia4_Extras
	definir flag Como Logico
	flag = verdadero
	mientras flag hacer
		flag = menu()
	FinMientras
FinProceso
//----------------------FIN DEL ALGORITMO PRINCIPAL------------------------------------------------------

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
	Escribir "07 - Funcion recursiva de arreglo no pude resolver todavia"
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
	definir vector1,n, prom  Como entero
	definir a como entero
	Escribir "Ingrese el tamaño del vector"
	leer n
	Dimension vector1[n]
	para a<- 0 hasta n-1 Hacer
		Escribir "Ingrese el valor para la posicion: " a + 1
		leer vector1[a]
		
	FinPara
	prom = 0
	Escribir "Valores Ingresados para el vector"
	para a<- 0 hasta n-1 Hacer
		Escribir sin saltar vector1[a] "|"	
		prom = prom + vector1[a]
	FinPara
	Escribir ""
	Escribir "El promedio del vector es: " prom/n
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 3 ********************************************************
SubProceso ejercicio3() 
	definir long, n, prom, a  Como entero
	definir nombres Como Caracter
	Escribir "Ingrese el tamaño del vector"
	leer n
	Dimension nombres[n], long[n]
	para a<- 0 hasta n-1 Hacer
		Escribir "Ingrese el nombre para la posicion: " a + 1
		leer nombres[a]
		long[a] = Longitud(nombres[a])
	FinPara
	para a<- 0 hasta n-1 Hacer
		Escribir sin saltar "Nombre: " nombres[a] " con longitud: " long[a]	
		Escribir ""
	FinPara
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso	
//***************************inicio ejercicio 4 ********************************************************
SubProceso ejercicio4() 
	definir notas, estudiantes  Como entero
	definir a como entero
	Dimension  estudiantes[4]
	para a<- 0 hasta 3 Hacer
		estudiantes[a]=0
	FinPara
	estudiantes[3]=0
	Dimension notas[100]
	para a<- 0 hasta 99 Hacer
		notas[a]=Aleatorio(0,20)
		
	FinPara
	
	para a<- 0 hasta 99 Hacer
		si ((notas[a] > 0) y (notas[a] <= 5))entonces
			estudiantes[0]=estudiantes[0]+1
		SiNo
			si ((notas[a] > 6) y (notas[a] <= 10))entonces
				estudiantes[1]=estudiantes[1]+1
			SiNo
				si ((notas[a] > 11) y (notas[a] <= 15))entonces
					estudiantes[2]=estudiantes[2]+1
				SiNo
					si ((notas[a] > 16) y (notas[a] <= 20))entonces
						estudiantes[3]=estudiantes[3]+1
					FinSi
				FinSi
			FinSi
			
		FinSi
			
	FinPara
	Escribir "a) DEFICIENTES Nota entre 0-5: " estudiantes[0]
	Escribir "b) REGULARES Nota entre 6-10: " estudiantes[1]
	Escribir "c) BUENOS Nota entre 11-15: " estudiantes[2]
	Escribir "d) EXCELENTES Nota entre 16-20: " estudiantes[3]
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 5 ********************************************************
SubProceso ejercicio5() 
	definir vector,str,simbolo Como caracter
	definir i,pos, sup, inf, largo como entero
	largo = 20
	Dimension vector[largo]
	Escribir "Ingrese frase a cargar"
	leer str
	para i<- 0 hasta largo-1  Hacer
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
	si(pos<largo)Entonces
		i=pos
		sup = 0
		inf = 0
		mientras vector[i]<>" " Hacer
			sup =sup+1
			i = i+1
		FinMientras
		i = pos
		mientras vector[i]<>" " Hacer
			inf =inf+1
			i = i-1
		FinMientras
		si inf <= sup Entonces
			Escribir "Insertar a la izq"
			para i<-0 hasta pos-1 Hacer
				vector[i]=vector[i+1]
			FinPara
			vector[pos]=simbolo
		SiNo
			Escribir "insertar a la derecha"
			para i<- largo-1 hasta pos+1 Hacer
				vector[i]=vector[i-1]
			FinPara
			vector[pos]=simbolo
		FinSi
		
	SiNo
		Escribir "Posicion fuera de rango"
	FinSi
	
	para i<- 0 hasta largo-1 Hacer
		Escribir sin saltar vector[i] 
	FinPara
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla
	
FinSubProceso
//***************************inicio ejercicio 6********************************************************
SubProceso ejercicio6() 
	definir vector, max, min, i, nro como entero
	Escribir "Ingrese el tamaño del arreglo"
	leer nro
	Dimension  vector[nro]
	para i<-0 hasta nro-1 Hacer			//ciclo utilizado para rellenar el vector con valores aleatorios
		vector[i]=aleatorio(0,100)
	FinPara
	min=vector[0]
	max=vector[0]
	para i<- 0 hasta nro-1 Hacer
		Escribir  Sin Saltar vector[i] "|"
		si min >= vector[i] Entonces
			min = vector[i]
		SiNo
			si max < vector[i] Entonces
				max = vector[i]
			FinSi
		FinSi
	FinPara
	Escribir ""
	Escribir "La diferencia entre el maximo: " max " y el minimo: " min " es = " max-min
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 7 ********************************************************
SubProceso ejercicio7() 
	definir vector, i, nro, total, aux como entero
	Escribir "Ingrese el tamaño del arreglo"
	leer nro
	total = 0
	Dimension  vector[nro]
	
	para i<- 0 hasta nro-1 Hacer
		vector[i]= Aleatorio(1,10)
	FinPara
	para i<- 0 hasta nro-1 Hacer
			Escribir sin saltar vector[i] "-"
	FinPara
	Escribir ""
	escribir "La suma es " suma(vector,nro-1 )
	
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//-------------------------------------------------------------
Funcion rto <- suma(vector ,nro)
	definir rto, i Como Entero
	definir total como entero
	rto = 0
	si nro = 0 entonces
		rto = vector[nro]
	SiNo
		rto = vector[nro] + suma(vector,nro-1)
	finsi
	
	
Fin Funcion
//-------------------------------------------------------------
//***************************inicio ejercicio 8 ********************************************************
SubProceso ejercicio8() 
	definir vector, i,n, produ Como Entero
	Escribir "Ingrese el tamaño del vector"
	leer n
	Dimension vector[n]
	produ = 1
	para i<-0 hasta n-1 Hacer			//ciclo utilizado para rellenar el vector con valores aleatorios
		vector[i]=aleatorio(1,20)
		escribir sin saltar vector[i] "|"
	FinPara
	
	para i<- 0 hasta n-1 Hacer
		produ = produ * vector[i]
	FinPara
	Escribir  ""
	Escribir "El producto del vector es " produ
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 9 ********************************************************
SubProceso ejercicio9() 	
	definir matriz, i,j,fila,col Como Entero
	Escribir  "Ingrese las filas "
	leer fila
	Escribir  "Ingrese las columnas "
	leer col
	Dimension matriz[fila,col]
	para i<- 0 hasta fila-1 Hacer
		para j<-0 hasta col-1 Hacer
			matriz[i,j]=Aleatorio(1,50)
		FinPara
	FinPara
	para i<- 0 hasta fila-1 Hacer
		para j<-0 hasta col-1 Hacer
			Escribir sin saltar rellenarEspaciosGral(matriz[i,j],5,"|")
		FinPara
		Escribir ""
	FinPara
	
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 10 ********************************************************
SubProceso ejercicio10() 
	definir matriz,traspuesta, i,j,fila,col,aux Como Entero
	Escribir  "Ingrese las filas "
	leer fila
	Escribir  "Ingrese las columnas "
	leer col
	Dimension matriz[fila,col], traspuesta[col,fila]
	//cargar matriz origianl
	para i<- 0 hasta fila-1 Hacer
		para j<-0 hasta col-1 Hacer
			matriz[i,j]=Aleatorio(1,100)
		FinPara
	FinPara
	//cargar matriz traspuesta
	para i<- 0 hasta fila-1 Hacer
		para j<-0 hasta col-1 Hacer
			traspuesta[j,i]=Aleatorio(1,100)
		FinPara
	FinPara
	Escribir "Matriz Original"
	para i<- 0 hasta fila-1 Hacer
		para j<-0 hasta col-1 Hacer
			Escribir sin saltar matriz[i,j] "|"
		FinPara
		Escribir ""
	FinPara
	Escribir "Matriz Traspuesta"
	para i<- 0 hasta col-1 Hacer
		para j<-0 hasta fila-1 Hacer
			Escribir sin saltar matriz[j,i] "|"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 11 ********************************************************
SubProceso ejercicio11() 
	definir matriz, i,j,fila,col,aux Como Entero
	Dimension matriz[5,15]
	//cargar matriz origianl
	para i<- 0 hasta 4 Hacer
		para j<-0 hasta 14 Hacer
			si i=0 o i =4 o j =0 o j=14 Entonces
				matriz[i,j] = 1
			SiNo
				matriz[i,j] = 0
			FinSi
		FinPara
	FinPara
	
	para i<- 0 hasta 4 Hacer
		para j<-0 hasta 14 Hacer
			Escribir sin saltar matriz[i,j] " "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 12 ********************************************************
SubProceso ejercicio12() 
	
	definir matriz, i,j, x,matriz2,resultante,aux,n Como Entero 
	Dimension matriz[3,3], matriz2[3,3], resultante[3,3]
	
	//cargar matriz origianl
	para i<- 0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			matriz[i,j]=Aleatorio(0,2)
			matriz2[i,j]=Aleatorio(0,2)
		FinPara
	FinPara
	
	
	Escribir "La matriz de 3x3 es "
	para i<- 0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			escribir sin saltar matriz[i,j] "|"
		FinPara
		Escribir ""
	FinPara
	
	Escribir "La matriz de 3x3 es "
	para i<- 0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			escribir sin saltar matriz2[i,j] "|"
		FinPara
		Escribir ""
	FinPara
	
	Escribir "Matriz resultante  3x3 es:"
	
	para x<-0 hasta 2 hacer
		
		para i<- 0 hasta 2 hacer
			aux = 0
			para j<-0 hasta 2 Hacer
				aux= aux+(matriz[x,j] * matriz2[j,i])
			FinPara
			resultante[x,i] =aux 
		finpara
	
		
	finpara
	Escribir "La matriz de 3x3 es "
	para i<- 0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			escribir sin saltar resultante[i,j] "|"
		FinPara
		Escribir ""
	FinPara
	
	
	
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
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
	definir matriz, i,j, x,vector,aux Como Entero 
	Dimension matriz[3,3]
	dimension vector[3]
	//cargar matriz origianl
	para i<- 0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			matriz[i,j]=Aleatorio(1,10)
		FinPara
	FinPara
	para i<- 0 hasta 2 Hacer
		vector[i] = Aleatorio(1,10)
	FinPara
	Escribir "La matriz de 3x3 es "
	para i<- 0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			escribir sin saltar matriz[i,j] "|"
		FinPara
		Escribir ""
	FinPara
	
	Escribir "El vector por el que se multiplica la matriz de 3x3 es:"
	para i<-0 hasta 2 Hacer
		escribir sin saltar vector[i] "|"
	FinPara
	Escribir ""
	Escribir "Matriz resultante:"
	para i<- 0 hasta 2 Hacer
		aux = 0
		para j<-0 hasta 2 Hacer
			aux= aux+(matriz[i,j] * vector[j])
			
		FinPara
		Escribir  "|" aux "|"
		
	FinPara
	
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso
//***************************inicio ejercicio 15 ********************************************************
SubProceso ejercicio15() 
	definir matriz, str Como caracter
	definir fila,col,ventas, aux, mayor como entero
	Dimension matriz[8,7]
	para fila<- 0 hasta 7 Hacer
		para col<-0 hasta 6 Hacer
			matriz[fila,col]=ConvertirATexto(Aleatorio(1,100))
			si (fila=0) y (col>=0) y (col<7) Entonces
				segun col Hacer
					1:
						matriz[0,col] = rellenarEspacios("Lunes")
					2:
						matriz[0,col] = rellenarEspacios("Martes")
					3:
						matriz[0,col] = rellenarEspacios("Miercoles")
					4:
						matriz[0,col] = rellenarEspacios("Jueves")
					5:
						matriz[0,col] = rellenarEspacios("Viernes")
					6:
						matriz[0,col] = rellenarEspacios("Total Produc")
					0:
						matriz[0,col] = rellenarEspacios("------")
				FinSegun
			FinSi
			si (col=0) y (fila>0) y (fila<8) Entonces
				segun fila Hacer
					1:
						matriz[fila,0] = rellenarEspacios("Prod. 1")
					2:
						matriz[fila,0] = rellenarEspacios("Prod. 2")
					3:
						matriz[fila,0] = rellenarEspacios("Prod. 3")
					4:
						matriz[fila,0] = rellenarEspacios("Prod. 4")
					5:
						matriz[fila,0] = rellenarEspacios("Prod. 5")
					6:
						matriz[fila,0] = rellenarEspacios("Total Semana")
					7:
						matriz[fila,0] = rellenarEspacios("Produ mas Ven.")
				FinSegun
			FinSi
			
		FinPara
	FinPara
	
	para fila<- 1 hasta 5 Hacer
		aux = 0
		para col<-1 hasta 5 Hacer	//recorro toda la fila y obtengo la suma del producto por semana
			aux = aux + ConvertirANumero( matriz[fila,col]) 
		FinPara
		matriz[fila,6]= ConvertirATexto(aux)
	FinPara
	
	para col<- 1 hasta 5 Hacer
		aux = 0
		mayor =0
		str = ""
		para fila<-1 hasta 5 Hacer  // recorre columna y calculo ventas por dia y producto mas vendido
			aux = aux + ConvertirANumero( matriz[fila,col]) 
			ventas = ConvertirANumero(matriz[fila,col])
			si mayor < ventas Entonces
				mayor = ventas
				str = matriz[fila,0]
			FinSi
			si (ConvertirANumero(matriz[7,col])<(aux)) Entonces
				matriz[7,col] = ConvertirATexto(aux)
			FinSi
		FinPara
		matriz[6,col]= ConvertirATexto(aux)
		matriz[7,col]= str
	FinPara
	
	matriz[7,6]= rellenarEspacios("****")
	para fila<- 0 hasta 7 Hacer
		para col<-0 hasta 6 Hacer
			Escribir sin saltar rellenarEspacios(matriz[fila,col])
		FinPara
		Escribir ""
	FinPara
	
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso




//***************************inicio ejercicio 16 ********************************************************
SubProceso ejercicio16() 
	definir ventas, col,fila, f,c, totalRep, totalGral, totalZona Como Entero
	definir opZona, opRep, aux como entero
	definir flag como logico
	col = 5
	fila = 4
	Dimension ventas[fila,col]  //rellenar matriz con valores aleatorios
	para f<-0 hasta fila-1 Hacer
		para c <-0 hasta col-1 Hacer
			ventas[f,c]=Aleatorio(1,10)
		FinPara
	FinPara
	flag = falso
	Repetir
		
		Escribir "Ingrese la la zona que quiere conocer su total"
		Escribir "1 - NORTE"
		Escribir "2 - SUR"
		Escribir "3 - ESTE"
		Escribir "4 - OESTE"
		Escribir "5 - CENTRO"
		leer opZona
		si opZona < 1 o  opZona > 5 entonces
			flag = verdadero
		SiNo
			flag = falso
		FinSi
	mientras que flag
	
	
	totalZona = 0
	para f<-0 hasta fila-1 Hacer  //ciclo para obtener el total por zona
		totalZona = totalZona + ventas[f,opZona-1]
	FinPara
	flag = falso
	Repetir
		Escribir "Ingrese el Vendedor del cual quiere conocer el total"
		Escribir "Vendedor 1"
		Escribir "Vendedor 2"
		Escribir "Vendedor 3"
		Escribir "Vendedor 4"
		leer opRep
		si opRep <1 o opRep >4 Entonces
			flag = verdadero
		sino 
			flag = falso
		FinSi
	Mientras Que flag

	totalRep = 0
	para c<-0 hasta col-1 Hacer  //ciclo para obtener el total por vendedor
		totalRep = totalRep + ventas[opRep-1,c]
	FinPara
	aux = 0
	para f<-0 hasta fila-1 Hacer
		para c<- 0 hasta col-1 Hacer
			aux =aux+ventas[f,c]
		FinPara
	FinPara
	Escribir "IMPRESION DE LA MATRIZ"
	para f<-0 hasta fila-1 Hacer
		para c<- 0 hasta col-1 Hacer
			Escribir sin saltar rellenarEspacios(ConvertirATexto(ventas[f,c]))
		FinPara
		escribir ""
	FinPara
	
	Escribir "RESULTADOS OBTENIDOS"
	Escribir "Las venta de la zona: " opZona " fue de: " totalZona
	Escribir "El total de ventas del vendedor: " opRep " fue de: " totalRep
	Escribir "El total general de todas las zonas y todos  los vendedores es de: " aux
	Escribir ""
	Escribir "Precione una tecla para volver al menu"
	Esperar Tecla	
FinSubProceso