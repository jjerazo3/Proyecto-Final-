import numpy

''' 
    Dada una matriz m × n, realice un algoritmo para voltearla de abajo hacia arriba.
     Entrada:
       1  2  3
       4  5  6
       7  8  9
       10 11 12
     Salida: La matriz volteada de abajo a arriba es
       10 11 12
       7  8  9
       4  5  6
       1  2  3
'''

def OrdenarVerticalmente(Arreglo,n, m):
    #Se mueve el vector de abajo hacía arriba, fila por fila, y se aumenta 1 en columnas cada que se recorre una fila
    
    for i in range(0, m):
        for j in range(n - 1, 0, -1):
            for k in range(0, j):
                keeper = Arreglo[j][i]
                Arreglo[j][i] = Arreglo[k][i]
                Arreglo[k][i] = keeper
                j-=1
    return Arreglo

n = int(input("Ingrese la cantidad de filas de la matriz: "))
m = int(input("Ingrese la cantidad de columnas de la matriz: "))

#Usamos el método "zeros" de numpy para generar una matriz "encerada", se especifica la cantidad de filas y columnas, además del tipo 
#de datos que contiene la matriz.

matriz = numpy.zeros([n,m] , dtype = int)
for i in range(0, n):
    for j in range(0, m):
        matriz[i][j] = int(input())
        
print("Matriz Original: ")
print(matriz)

matriz = OrdenarVerticalmente(matriz,int(n), int(m))

print("Matriz Volteada: ")
print(matriz)
