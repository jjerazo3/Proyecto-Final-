Proceso DigitosNumero
	// Leer n n�meros enteros almacenados en un vector. Luego leer un entero
	// y determinar cuantos n�meros de los almacenados en el vector terminan
	// en el mismo d�gito que el �ltimo valor le�do.
	Definir contador,digito, i, vector Como Entero
	Definir TerminaEn Como Logico
	Dimension vector[10]
	Escribir 'Ingrese el d�gito: '
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
	Escribir 'El n�mero ',digito,' se repite ',contador,' veces en el vector en las posiciones: '
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
