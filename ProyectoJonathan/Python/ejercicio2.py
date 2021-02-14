import numpy

''' 
    Leer 2 matrices enteras y determinar si el mayor número almacenado en una de
    ellas que pertenezca a la serie Fibonnaci es igual al mayor número almacenado
    en la otra matriz que pertenezca a la serie de Finonacci
'''


def LeerVector(matriz):
    for i in range(0, len(matriz)):
        for j in range(0, len(matriz[i])):
            matriz[i][j] = int(input())
            
    res = 0
    #Se ordena el arreglo de forma descendente
    for i in range(0, len(matriz)):
        for j in range(0, len(matriz[i])):
            for h in range(0, len(matriz)):
                for k in range(0, len(matriz[i])):
                    if  matriz[i][j] > matriz [h][k]:
                        res = matriz[i][j]
                        matriz[i][j] = matriz[h][k]
                        matriz[h][k] = res
    return matriz

def PerteneceALaSerie(num):
    Pertenece = False
    
    num1 = 0 
    num2 = 1
    suma = 1
    
    for i in range(0, num):
        if  num == suma:
             Pertenece =  True
            
        suma = num1 + num2
        num1 = num2
        num2 = suma
        
    return Pertenece


#Usamos el método "zeros" de numpy para generar una matriz "encerada", se especifica la cantidad de filas y columnas, además del tipo 
#de datos que contiene la matriz.
matriz1 = numpy.zeros([4,6] , dtype = int)
matriz2 = numpy.zeros([4,6] , dtype = int)

print("Ingrese los valores de la primera matriz 4 x 6: ")
matriz1  = LeerVector(matriz1)

print("Ingrese los valores de la segunda matriz 4 x 6: ")
matriz2  = LeerVector(matriz2)


if PerteneceALaSerie(matriz1[0][0] == True & PerteneceALaSerie(matriz2[0][0]) == True):
    print("Los 2 mayores números de cada matriz sí pertenecen a la serie Fibonacci. ")
else: 
    print("Uno o ambos mayores números de cada matriz no pertenecen a la serie Fibonacci. ")

if matriz1[0][0] == matriz2[0][0]:
    print("Los número son iguales.")
else:
    print("Los número no son iguales.")

print("Número mayor de la primera matriz: " , matriz1[0][0])
print("Número mayor de la segunda matriz: " , matriz2[0][0])
