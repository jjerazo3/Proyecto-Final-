package ejercicios;

import java.util.Scanner;

public class ejercicio1 {

    public static void main(String[] args) {
        /*
         * Leer n numeros enteros almacenados en un vector. Luego leer un entero
         * y determinar cuantos numeros de los almacenados en el vector terminan
         * en el mismo digito que el ultimo valor leido.
         */

        Scanner leer = new Scanner(System.in);
        int contador = 0;
        int[] vector = new int[10];
        System.out.println("Ingrese el dígito: ");
        int digito = leer.nextInt();
        System.out.println("Ingrese los elementos del vector: ");
        for (int i = 0; i < vector.length; i++) {
            vector[i] = leer.nextInt();
            if (ComprobarDigito(vector[i], digito)) {
                contador += 1;
            }
        }
        
        System.out.println("El número "+ digito + " se repite " +contador+ " veces en el vector en las posiciones: ");
        for (int i = 0; i < vector.length; i++) {
            if (ComprobarDigito(vector[i], digito)) {
                System.out.print(i + " ");
            }
        }

    }

    public static boolean ComprobarDigito(int num, int digito) {
        if (num % 10 == digito) {
            return true;
        }else{
            return false;
        }
    }
}
