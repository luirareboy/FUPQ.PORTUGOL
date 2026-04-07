/*
NOME: Luiz Claudio Souza Silva
DISCIPLINA: Lógica de Programação
TURMA: DS-14
*/

programa
{
   funcao inicio()
   {
      real valor
      real desconto
      real novo_valor

      escreva("Digite o valor da compra: ")
      leia(valor)

      escreva("Digite o valor do desconto: ")
      leia(desconto)

      novo_valor = valor - desconto

      escreva("\nO valor cheio é: ", valor)
      escreva("\nO valor do desconto é: ", desconto)
      escreva("\nO novo valor é: ", novo_valor)
   }
}
