//sopa de letras solo palabras en vertical y horizontal por ahora
Proceso moverPalabra
	definir matriz como caracter
	definir tam Como Entero
	Escribir "Ingrese la dimension para la matriz cuadrada entre 0 y 99"
	leer tam
	si tam >1 y tam <100 Entonces
		Dimension matriz[tam,tam]
		inicializar_matriz(matriz,tam)
		
		agregarPalabraVerti(matriz,tam) // para agregar palabra vertical normal
		
		agregarPalabraVertiInv(matriz,tam)//para agergar palabra vertical invertida
		
		agregarPalabraHori(matriz,tam)//para agregar palabra horizontales normal
		
		agregarPalabraHoriInv(matriz, tam)//para agregar palabras horizontales invertida
		
		//reemplazarValores(matriz,tam)
		
		imprimir_matriz(matriz,tam)
		Escribir "Precione una tecla para volver al menu"
		Esperar Tecla
	SiNo
		Escribir "Error al ingresar la dimension de la matriz"
	FinSi
	
FinProceso
//--------------inicializa la matriz con asteriscos---------------------------------------
SubProceso inicializar_matriz(matriz,tam)
	definir i,j Como Entero
	definir letra como entero
	para i<- 0 hasta tam-1 Hacer
		para j<-0 hasta tam-1 Hacer
			matriz[i,j]="*"
			//matriz[i,j]= asignar_letra(Falso)
		FinPara
	FinPara
	
FinSubProceso
//--------------inicializa la matriz con asteriscos---------------------------------------
SubProceso reemplazarValores(matriz,tam)
	definir i,j Como Entero
	definir letra como entero
	para i<- 0 hasta tam-1 Hacer
		para j<-0 hasta tam-1 Hacer
			si matriz[i,j] = "*" entonces
				matriz[i,j] = asignar_letra(Verdadero)
			finsi
		FinPara
	FinPara
	
FinSubProceso
//-------------------agregar 3 palabras verticales --------------------------------
//se agregara 3 palabras ingresadas por el usuario con longitud inferior al orden de la matriz -2 posiciones
SubProceso agregarPalabraVerti(matriz, tam)
	definir palabra Como Caracter
	definir tamPal, canPal,conLetra, i,pos,posy Como Entero
	para canPal<-0 hasta 2 hacer
		//por el numero aleatorio de la columna puede llegar a caer en la mismpa posicion y sobreescrbir la palabra
		repetir
			Escribir "Ingrese la palabra a agregar menor a:" tam
			leer palabra
			tamPal = longitud(palabra)
		hasta que (tamPal< tam) 
		
		si tamPal<(tam-tamPal)entonces
			posy= aleatorio(0,tam-1)
		SiNo
			posy=0
		finsi
		si tamPal < tam Entonces
			repetir
				si tamPal < (tam-tamPal) entonces
					pos = aleatorio(0,(tam-tamPal))
				sino 
					pos = 0
				finsi
			mientras que pos >(tamPal)
			
			para i<-0 hasta (tamPal-1) Hacer
				matriz[i+pos,posy]= mayusculas(Subcadena(palabra,i,i))
				
			FinPara
		FinSi
	FinPara
	
FinSubProceso
//------------------agregar 3 palabras-verticales invertidas---------------------------
SubProceso agregarPalabraVertiInv(matriz,tam)
	definir palabra Como Caracter
	definir tamPal, canPal,conLetra, i,pos,posy Como Entero
	para canPal<-0 hasta 2 hacer
		//por el numero aleatorio de la columna puede llegar a caer en la mismpa posicion y sobreescrbir la palabra
		repetir
			Escribir "Ingrese la palabra a agregar menor a:" tam
			leer palabra
			tamPal = longitud(palabra)
		hasta que (tamPal< tam) 
		
		si tamPal<(tam-tamPal)entonces
			posy= aleatorio(0,tam-1)
		SiNo
			posy=0
		finsi
		si tamPal < tam Entonces
			repetir
				si tamPal < (tam-tamPal) entonces
					pos = aleatorio(0,(tam-tamPal))
				sino 
					pos = 0
				finsi
			mientras que pos >(tamPal)
			
			para i<-0 hasta (tamPal-1)  Hacer
				conLetra = tamPal-1-i
				matriz[i+pos,posy]= mayusculas(Subcadena(palabra,conLetra,conLetra))
				
				
			FinPara
		FinSi
	FinPara
	
FinSubProceso
//------------------agregar 3 palabras--horizontales invertidas---------------------------
SubProceso  agregarPalabraHoriInv(matriz Por Referencia, tam)
	definir palabra Como Caracter
	definir tamPal, canPal,Pal,espacios, i,j,pos,x, conLetra Como Entero
	Dimension  pos[2]
	definir flag Como Logico
	flag = verdadero
	para Pal<-0 hasta 2 hacer
		//ciclo para repetir hasta que se ingrese una palabra valida
		repetir
			Escribir "Ingrese palabra para agregar horizontal menores a:" tam
			leer palabra
			tamPal = longitud(palabra)
		hasta que (tamPal< tam) 
		
		x=0
		mientras (x<tam-1 y flag) hacer 
			espacios=0
			si (tamPal< tam-3) entonces
				j=aleatorio(0,tam-1)
			sino
				j=0
			FinSi
			
			i=aleatorio(0,tam-1)
			mientras (matriz[i,j] = "*" y j<tam-1 )  Hacer
				espacios = espacios +1
				si j<tam-1 Entonces
					j = j+1
				SiNo
					j  = 0
				FinSi
			FinMientras
			si espacios >= tamPal Entonces
				pos[0] = i
				pos[1]= j-espacios
				flag = falso
			sino 
				espacios = 0
			FinSi
			x=x+1	
		FinMientras
		
		si !flag Entonces
			para canPal<-0 hasta tamPal-1 Hacer
				conLetra = tamPal-1-canPal
				matriz[pos[0],pos[1]+canPal] =mayusculas(Subcadena(palabra,conLetra,conLetra))
			FinPara
			flag=verdadero
		FinSi
		
	FinPara
	
FinSubProceso
//------------------agregar 3 palabras----horizontales---------------------------
SubProceso agregarPalabraHori(matriz, tam)
	definir palabra Como Caracter
	definir tamPal, canPal,Pal,espacios, i,j,pos,x Como Entero
	Dimension  pos[2]
	definir flag Como Logico
	flag = verdadero
	para Pal<-0 hasta 2 hacer
		//ciclo para repetir hasta que se ingrese una palabra valida
		repetir
			Escribir "Ingrese palabra para agregar horizontal menores a:" tam
			leer palabra
			tamPal = longitud(palabra)
		hasta que (tamPal< tam) 
		
		x=0
		mientras (x<tam-1 y flag) hacer 
			espacios=0
			si (tamPal< tam-3) entonces
				j=aleatorio(0,tam-1)
			sino
				j=0
			FinSi
			
			i=aleatorio(0,tam-1)
			mientras (matriz[i,j] = "*" y j<tam-1 )  Hacer
				espacios = espacios +1
				si j<tam-1 Entonces
					j = j+1
				SiNo
					j  = 0
				FinSi
			FinMientras
			si espacios >= tamPal Entonces
				pos[0] = i
				pos[1]= j-espacios
				flag = falso
			sino 
				espacios = 0
			FinSi
		x=x+1	
		FinMientras
		
		si !flag Entonces
			para canPal<-0 hasta tamPal-1 Hacer
				matriz[pos[0],pos[1]+canPal] =mayusculas(Subcadena(palabra,canPal,canPal))
			FinPara
			flag=verdadero
		FinSi
		
	FinPara
	
FinSubProceso




//------------------imprimie la matriz para ir viendo resultado-----------------------------------
SubProceso imprimir_matriz(matriz,tam)
	definir i,j Como Entero
	para i<- 0 hasta tam-1 Hacer
		para j<-0 hasta tam-1 Hacer
			Escribir sin saltar " " matriz[i,j] " "
		FinPara
		escribir ""
	FinPara
FinSubProceso
//-------------asignacion de letras aleatorias a la sopa----------
SubProceso rto <- asignar_letra(cambiar)
	definir abc, rto Como Caracter
	definir i Como Entero
	si (!cambiar)Entonces
		rto="*"
	sino
		Dimension  abc[27]
		abc[0]="A"
		abc[1]="B"
		abc[2]="C"
		abc[3]="D"		
		abc[4]="E"
		abc[5]="F"
		abc[6]="G"
		abc[7]="H"
		abc[8]="I"
		abc[9]="J"
		abc[10]="K"
		abc[11]="L"
		abc[12]="M"
		abc[13]="N"
		abc[14]="Ñ"
		abc[15]="O"
		abc[16]="P"
		abc[17]="Q"
		abc[18]="R"
		abc[19]="S"
		abc[20]="T"
		abc[21]="U"
		abc[22]="V"
		abc[23]="W"
		abc[24]="X"
		abc[25]="Y"
		abc[26]="Z"
		rto = Minusculas(abc[aleatorio(0,26)])
	finsi
Fin SubProceso
