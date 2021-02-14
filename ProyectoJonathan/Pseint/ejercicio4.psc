Algoritmo ejercicio4
	//Dada una matriz m × n, realice un algoritmo para voltearla de abajo hacia arriba.
	
	//Entrada:
	//	1  2  3
	//	4  5  6
	//	7  8  9
	//	10 11 12
	
	//Salida: La matriz volteada de abajo a arriba es
	//	10 11 12
	//	7  8  9
	//	4  5  6
	//	1  2  3

	Definir n, m, keeper Como Entero
	
	Imprimir "Ingrese la cantidad de filas de la matriz:"
	Leer n
	Imprimir "Ingrese la cantidad de columnas de la matriz:"
	Leer m
	
	Dimension Arreglo(n,m)
	
	//Se leen los valores de la primera matriz.
	Imprimir "Ingrese los valores de la matriz n x n: "
	Para i = 1 Hasta n Con Paso 1 Hacer
		Para j = 1 Hasta m Con Paso 1 Hacer
			Leer Arreglo[i,j]
		FinPara
	FinPara
	
	
	//Se mueve el vector de abajo hacía arriba, fila por fila, y 
	//se aumenta 1 en columnas cada que se recorre una fila
	Para i = 1 Hasta m Con Paso 1 Hacer
		Para j = n Hasta 1 Con Paso -1 Hacer
			Para k = 1 Hasta j-1 Con Paso 1 Hacer
				keeper = Arreglo[j,i]
				Arreglo[j,i] = Arreglo[k,i]
				Arreglo[k,i] = keeper
				j = j - 1
			FinPara
		FinPara
	FinPara
	
	//Se imprime nuevamente el vector
	Para i = 1 Hasta n Con Paso 1 Hacer
		Para j = 1 Hasta m Con Paso 1 Hacer
			Imprimir Arreglo[i,j] , " " Sin Saltar
		FinPara
		Imprimir ""
	FinPara
   
FinAlgoritmo
