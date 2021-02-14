Algoritmo ejercicio2
	//Leer 2 matrices enteras y determinar si el mayor número almacenado en una de
	//ellas que pertenezca a la serie Fibonnaci es igual al mayor número almacenado
	//en la otra matriz que pertenezca a la serie de Finonacci
	
	Definir mayor1, mayor2 Como Entero
	Dimension matriz1(4, 6)
	Dimension matriz2(4, 6)
	
	
	//Se leen los valores de la primera matriz
	Imprimir "Ingrese los valores de la primera matriz 4 x 6: "
	Para i = 1 Hasta 4 Con Paso 1 Hacer
		Para j = 1 Hasta 6 Con Paso 1 Hacer
			Leer matriz1[i,j]
		FinPara
	FinPara
	
	//Se leen los valores de la segunda matriz
	Imprimir "Ingrese los valores de la segunda matriz 4 x 6: "
	Para i = 1 Hasta 4 Con Paso 1 Hacer
		Para j = 1 Hasta 6 Con Paso 1 Hacer
			Leer matriz2[i,j]
		FinPara
	FinPara
	
	mayor1 = ObtenerMayor(matriz1)
	mayor2 = ObtenerMayor(matriz2)
	Si (PerteneceALaSerie(mayor1) == Verdadero) Y (PerteneceALaSerie(mayor2) == Verdadero)  Entonces
		Imprimir "Los 2 mayores números de cada matriz sí pertencen a la serie Fibonacci"
	SiNo
		Imprimir "Uno o ambos mayores números de cada matriz no pertenecen a la serie Fibonacci. "
	FinSi
	
	Si (mayor1 == mayor2) Entonces
		Imprimir "Los números son iguales."
	SiNo
		Imprimir "Los números no son iguales."
	FinSi
	
	Imprimir "Número mayor de la primera matriz: ", mayor1
	Imprimir "Número mayor de la segunda matriz: ", mayor2
	
FinAlgoritmo

SubProceso Pertenece <- PerteneceALaSerie(num)
	Definir suma, num1, num2 Como Entero
	Pertenece = Falso
	num1 = 0
	num2 = 1
	suma = 1
	Para i = 1 Hasta num Con Paso 1
		Si (num == suma) Entonces
			Pertenece = verdadero
			suma = num1 + num2
			num1 = num2
			num2 = suma
		FinSi
	FinPara
FinSubProceso

SubProceso may <- ObtenerMayor(Arreglo)
	Definir res Como Entero
	//Se ordena el vector de forma descendente
	Para i = 1 Hasta 4 Con Paso 1 Hacer
		Para j = 1 Hasta 6 Con Paso 1 Hacer
			Para h = 1 Hasta 4 Con Paso 1 Hacer
				Para k = 1 Hasta 6 Con Paso 1 Hacer
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
	
FinSubProceso