Proceso DigitosNumero
	// Leer n números enteros almacenados en un vector. Luego leer un entero
	// y determinar cuantos números de los almacenados en el vector terminan
	// en el mismo dígito que el último valor leído.
	Definir contador,digito, i, vector Como Entero
	Definir TerminaEn Como Logico
	Dimension vector[10]
	Escribir 'Ingrese el dígito: '
	Leer digito
	contador <- 0
	TerminaEn <- Falso
	Escribir 'Ingrese los valores del vector: '
	Para i<-1 Hasta 10 Hacer
		Leer vector[i]
		Si ComprobarDigito(vector[i],digito) Entonces
			contador <- contador+1
		FinSi
	FinPara
	Escribir 'El número ',digito,' se repite ',contador,' veces en el vector en las posiciones: '
	Para i<-1 Hasta 10 Hacer
		Si ComprobarDigito(vector[i],digito) Entonces
			Escribir i,' ' Sin Saltar
		FinSi
	FinPara
FinProceso

SubProceso res <- ComprobarDigito(num,digito)
	res = Falso
	Si (num MOD 10==digito) Entonces
		res <- Verdadero
	FinSi
FinSubProceso
