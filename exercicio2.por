/*
NOME: Luiz Claudio Souza Silva
DISCIPLINA: Lógica de Programação
TURMA: DS-14
*/

programa
{
   inclua biblioteca Matematica --> mat

   funcao inicio()
   {
      inteiro num
      inteiro i
      inteiro divisores = 0

      escreva("Digite um número: ")
      leia(num)

      // Par ou ímpar
      se (num % 2 == 0)
      {
         escreva("\nO número é: Par")
      }
      senao
      {
         escreva("\nO número é: Ímpar")
      }

      // Positivo, negativo ou zero
      se (num > 0)
      {
         escreva("\nO número é: Positivo")
      }
      senao se (num < 0)
      {
         escreva("\nO número é: Negativo")
      }
      senao
      {
         escreva("\nO número é: Zero")
      }

      // Número primo
      se (num > 1)
      {
         para (i = 1; i <= num; i++)
         {
            se (num % i == 0)
            {
               divisores = divisores + 1
            }
         }

         se (divisores == 2)
         {
            escreva("\nO número é primo: Sim")
         }
         senao
         {
            escreva("\nO número é primo: Não")
         }
      }
      senao
      {
         escreva("\nO número é primo: Não")
      }

      // Raiz quadrada (corrigida)
      se (num >= 0)
      {
         escreva("\nA raiz quadrada do número é: ", mat.raiz(num, 2))
      }
      senao
      {
         escreva("\nA raiz quadrada do número é: não existe para número negativo")
      }

      // Elevado a 3
      escreva("\nO número elevado a 3 é: ", mat.potencia(num, 3))
   }
}