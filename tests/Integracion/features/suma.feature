Feature: Sumar dos numeros

    Scenario Outline: Suma
        Given que deseo calcular dos numeros
        When yo ingrese los numeros <num1> y <num2> en la operacion <operacion>
        Then El resultado <result> debe ser la suma de ambos
        
        Examples: Suma de Numeros
        | operacion | num1 | num2 | result  |
        | sumar     | 2    | 2    | 4       |
        | sumar     | 1    | 12   | 13      |
        | sumar     | 100  | 1000 | 1100    |
        | sumar     | 0    | 0    | 0       |
        | sumar     | 1    | -1   | Invalid |