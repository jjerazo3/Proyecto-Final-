package ejercicios;

import java.util.Scanner;

/*
Dada una matriz m × n, realice un algoritmo para voltearla de arriba hacia abajo a
derecha.
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
 */

public class ejercicio4 {

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int n, m;
        System.out.println("Ingrese la cantidad de filas de la matriz: ");
        n = leer.nextInt();
        System.out.println("ngrese la cantidad de columnas de la matriz: ");
        m = leer.nextInt();

        int[][] Arreglo = new int[n][m];

        //Se leen los valores del arreglo
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                Arreglo[i][j] = leer.nextInt();
            }
        }
        
        //Se llama a la funcón que "ordena" el vector
        Arreglo = OrdenarVerticalmente(Arreglo, n, m);
        
        
        //Se imprime nuevamente el vector
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                System.out.print(Arreglo[i][j] + " ");
            }
            System.out.println("");
        }
    }

    public static int[][] OrdenarVerticalmente(int[][] Arreglo, int n, int m) {

        //Se mueve el vector de abajo hacía arriba, fila por fila, y 
        //se aumenta 1 en columnas cada que se recorre una fila
        int keeper = 0;
        for (int i = 0; i < m; i++) {
            for (int j = n - 1; j > 0; j--) {
                for (int k = 0; k < j; k++) {
                    keeper = Arreglo[j][i];
                    Arreglo[j][i] = Arreglo[k][i];
                    Arreglo[k][i] = keeper;
                    j--;
                }

            }

        }

        return Arreglo;
    }
}
