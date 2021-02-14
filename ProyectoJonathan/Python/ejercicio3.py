import numpy

'''
   Construir una función que reciba como parámetro una matriz de 3 x 4
   entera y retorne la cantidad de veces que se repite el mayor dato de la
   matriz. 
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

def ComprobarMayorRepetido(Arreglo):
    ContadorMayor = 0
    
    #Se obtiene el número de la posición 0, 0 ya que la matriz ya está ordenada.
    mayor = Arreglo[0][0]
    print("El mayor dato del arreglo es: ", mayor)
    for i in range(0, len(Arreglo)):
        for j in range(0, len(Arreglo[i])):
            if Arreglo[i][j] == mayor: 
                ContadorMayor+=1
    return ContadorMayor
            

#Usamos el método "zeros" de numpy para generar una matriz "encerada", se especifica la cantidad de filas y columnas, además del tipo 
#de datos que contiene la matriz.
matriz = numpy.zeros([3,4] , dtype = int)

print("Ingrese los valores de la matriz 3 x 4: ")
matriz = LeerVector(matriz)

#Llamamos en la función
print("El mayor dato de la matriz se repite " , ComprobarMayorRepetido(matriz) ," veces.")

