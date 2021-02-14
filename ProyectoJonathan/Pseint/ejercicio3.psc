Algoritmo ejercicio3
	//Construir una función que reciba como parámetro una matriz de 3 x 4
	//entera y retorne la cantidad de veces que se repite el mayor dato de la
	// matriz. 
	
	Definir contadorMayor Como Entero
	Dimension Arreglo(3,4)
	Imprimir "Ingrese los datos de la matriz 3 x 4: "
	
	Para i = 1 Hasta 3 Con Paso 1 Hacer
		Para j = 1 Hasta 4 Con Paso 1 Hacer
			Leer Arreglo[i,j]
		FinPara
	FinPara
	contadorMayor = ComprobarMayorRepetido(Arreglo)
	
	Imprimir "El mayor dato de la matriz se repite ",contadorMayor, " veces." Sin Saltar
	
FinAlgoritmo

SubProceso contadorMayor <- ComprobarMayorRepetido(Arreglo)
	Definir res Como Entero
	contadorMayor = 0
	//Se ordena el vector de forma descendente
	Para i = 1 Hasta 3 Con Paso 1 Hacer
		Para j = 1 Hasta 4 Con Paso 1 Hacer
			Para h = 1 Hasta 3 Con Paso 1 Hacer
				Para k = 1 Hasta 4 Con Paso 1 Hacer
					Si(Arreglo[i, j] > Arreglo[h,k]) Entonces
						res = Arreglo[i,j]
						Arreglo[i,j] = Arreglo[h,k]
						Arreglo[h,k] = res
					FinSi
				FinPara
			FinPara
		FinPara
	FinPara
	
	may = Arreglo[1,1]
	Imprimir "El mayor dato del arreglo es: ", may
	
	
	Para i = 1 Hasta 3 Con Paso 1 Hacer
		Para j = 1 Hasta 4 Con Paso 1 Hacer
			Si Arreglo[i,j] == may Entonces
				contadorMayor = contadorMayor +  1
			FinSi
		FinPara
	FinPara
FinSubProceso