import numpy
'''
Leer n números enteros almacenados en un vector. Luego leer un entero
   y determinar cuantos números de los almacenados en el vector terminan
   en el mismo dígito que el último valor leído. 
'''


def ComprobarDigito(num, digito):
    if num % 10 == digito:
        return True
    else: 
        return False



digito  = int(input("Ingrese el dígito: "))

#Usamos el método "zeros" de numpy para generar una matriz "encerada", se especifica la longitud del vector, además del tipo 
#de datos que contiener.

vector = numpy.zeros([10] , dtype = int)
contador = 0  

print("Ingrese los valores del vector: ")
for i in range (0, len(vector)):
    vector[i] = int(input())
    if ComprobarDigito(int(vector[i]), int(digito)):
        contador+=1

print(f"El número {digito} se repite {contador} veces en el vector en las posiciones: ")
for i in range(0, len(vector)):
    if ComprobarDigito(vector[i], digito):
        print(str(i) , " ", end = "")