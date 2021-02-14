package ejercicios;

import java.util.Scanner;

public class ejercicio3 {

    /**
     * Construir una función que reciba como parámetro una matriz de 3 x 4
     * entera y retorne la cantidad de veces que se repite el mayor dato de la
     * matriz. *
     */

    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int[][] Arreglo = new int[3][4];

        System.out.println("Ingrese los datos de la matriz 3 x 4: ");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 4; j++) {
                Arreglo[i][j] = leer.nextInt();
            }
        }
        
        //Llamamos a la función
        System.out.println("El mayor dato de la matriz se repite " + ComprobarMayorRepetido(Arreglo) + " veces.");
    }

    public static int ComprobarMayorRepetido(int[][] Arreglo) {
        int ContadorMayor = 0;

        //Se ordena el arreglo de forma descendente
        int res = 0;
        for (int i = 0; i < Arreglo.length; i++) {
            for (int j = 0; j < Arreglo[i].length; j++) {
                for (int h = 0; h < Arreglo.length; h++) {
                    for (int k = 0; k < Arreglo[i].length; k++) {
                        if (Arreglo[i][j] > Arreglo[h][k]) {
                            res = Arreglo[i][j];
                            Arreglo[i][j] = Arreglo[h][k];
                            Arreglo[h][k] = res;
                        }
                    }
                }
            }
        }
        
        //Se obtiene el número de la posición 0, 0 ya que la matriz ya está ordenada.
        int mayor = Arreglo[0][0];
        System.out.println("El mayor dato del arreglo es: " + mayor);
        
        //Se comprueba cúantas veces se repite el valor
        for (int i = 0; i < Arreglo.length; i++) {
            for (int j = 0; j < Arreglo[i].length; j++) {
                if (Arreglo[i][j] == mayor) {
                    ContadorMayor += 1;
                }
            }
        }

        return ContadorMayor;

    }
}
