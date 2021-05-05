# CommonLisp
Some questions about Common Lisp

Fibonacci Series:

A série de Fibonacci se define como tendo os dois primeiros elementos iguais a um e
cada elemento seguinte é igual à soma dois elementos imediatamente anteriores.
Exemplo, 1, 1, 2, 3, 5, 8 . . .
Pede-se que apresente a soma de todos os elementos da série de Fibonacci menor ou
igual a um determinado N.


Convergence of the series:

A série abaixo converge para o número π quando n → ∞.
    
4 * ∑ ( (−1)^i / 2i + 1 )
   
Codifique um programa que solicita ao usuário o número de parcelas da série e calcula
e exibe o valor aproximado de π usando o número solicitado de parcelas.


Registry:

Defina um registro para representar uma pessoa com os dados: nome, endereço,
idade, peso, e-mail e telefone. De forma que o campo endereço é outro registro com
os campos: cidade, bairro, rua e número. Faça uma função que receba um registro
Pessoa e apresente todos os dados dessa pessoa, inclusive os de endereço.
Seu algoritmo deve solicitar ao usuário esses dados e ao finalizar, apresentar as
informações chamando a função de exibir os dados.


MDC:

Determine o maior divisor comum de dois números inteiros positivos. Você deve criar
uma função chamada “mdc” para o cálculo e deve garantir que os dois números sejam
inteiros e positivos. Exemplo:
(mdc 36 63) = 9

Dica: Pesquise sobre o algoritmo de Euclides.


Encoding a List:

Faça um programa que retorne à codificação de uma lista de acordo com a quantidade
de elementos repetidos na mesma. Sua função deve receber uma lista e apresentar uma
saída equivalente a lógica abaixo:
(encode '(aaaabccaadeeee)) =⇒ (4A1B2C2A1D4E)
