Algoritmo sin_titulo
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
	
FinAlgoritmo
