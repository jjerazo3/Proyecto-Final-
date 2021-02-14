package ejercicios;

import java.util.Scanner;

/**
 * Leer 2 matrices enteras y determinar si el mayor número almacenado en una de
 * ellas que pertenezca a la serie Fibonnaci es igual al mayor número almacenado
 * en la otra matriz que pertenezca a la serie de Finonacci
 *
 * @author Sebastian
 */
public class ejercicio2 {

    static Scanner leer = new Scanner(System.in);

    public static void main(String[] args) {
        int[][] matriz1 = new int[4][6];
        int[][] matriz2 = new int[4][6];
        System.out.println("Ingrese los valores de la primera matriz 4 x 6: ");
        matriz1 = LeerVector(matriz1);

        System.out.println("Ingrese los valores de la segunda matriz 4 x 6: ");
        matriz2 = LeerVector(matriz2);

        if (PerteneceALaSerie(matriz1[0][0]) && PerteneceALaSerie(matriz2[0][0])) {
            System.out.println("Los 2 mayores números de cada matriz sí pertenecen a la serie Fibonacci. ");
        } else {
            System.out.println("Uno o ambos mayores números de cada matriz no pertenecen a la serie Fibonacci. ");
        }
        
        if (matriz1[0][0] == matriz2[0][0]) {
                System.out.println("Los números son iguales.");
            } else {
                System.out.println("Los números no son iguales.");
        }
        System.out.println("Número mayor de la primera matriz: " + matriz1[0][0]);
        System.out.println("Número mayor de la segunda matriz: " + matriz2[0][0]);

    }

    public static boolean PerteneceALaSerie(int num) {
        boolean Pertenece = false;
        
        //Se genera la serie fibonacci hasta el número
        int num1 = 0, num2 = 1, suma = 1;
        for (int i = 1; i <= num; i++) {
            if (num == suma) {
                Pertenece = true;
            }
            suma = num1 + num2;
            num1 = num2;
            num2 = suma;

        }
        return Pertenece;
    }

    public static int[][] LeerVector(int[][] Arreglo) {

        for (int i = 0; i < Arreglo.length; i++) {
            for (int j = 0; j < Arreglo[i].length; j++) {
                Arreglo[i][j] = leer.nextInt();
            }
        }
        int res = 0;
        //Se ordena el arreglo de forma descendente
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

        return Arreglo;
    }
}
