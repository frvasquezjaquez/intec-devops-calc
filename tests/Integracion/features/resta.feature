Feature: Restar dos numeros

    Scenario Outline: Restar
        Given que deseo calcular dos numeros
        When yo ingrese los numeros <num1> y <num2> en la operacion <operacion>
        Then El resultado <result> debe ser la resta de ambos
        
        Examples: Restar de Numeros
        | operacion | num1 | num2 | result  |
        | restar    | 2    | 2    | 0       |
        | restar    | 5    | 3    | 2       |
        | restar    | 1000 | 500  | 500     |
        | restar    | 0    | 0    | 0       |
        | restar    | 1    | -2   | Invalid |