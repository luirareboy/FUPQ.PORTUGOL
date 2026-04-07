/*
NOME: Luiz Claudio Souza Silva
DISCIPLINA: Lógica de Programação
TURMA: DS-14
*/

programa
{
   inclua biblioteca Texto --> tx

   funcao caracter paraMaiusculo(caracter c)
   {
      cadeia min = "abcdefghijklmnopqrstuvwxyz"
      cadeia mai = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
      inteiro i

      para (i = 0; i < 26; i++)
      {
         se (c == tx.obter_caracter(min, i))
         {
            retorne tx.obter_caracter(mai, i)
         }
      }

      retorne c
   }

   funcao caracter paraMinusculo(caracter c)
   {
      cadeia min = "abcdefghijklmnopqrstuvwxyz"
      cadeia mai = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
      inteiro i

      para (i = 0; i < 26; i++)
      {
         se (c == tx.obter_caracter(mai, i))
         {
            retorne tx.obter_caracter(min, i)
         }
      }

      retorne c
   }

   funcao inicio()
   {
      cadeia palavra
      cadeia maiusculo = ""
      cadeia minusculo = ""
      caracter c
      inteiro tamanho
      inteiro meio
      inteiro i

      escreva("Digite uma palavra: ")
      leia(palavra)

      tamanho = tx.numero_caracteres(palavra)
      meio = tamanho / 2

      escreva("\nPalavra digitada: ", palavra)
      escreva("\nQuantidade de letras: ", tamanho)
      escreva("\nPrimeira letra: ", tx.obter_caracter(palavra, 0))
      escreva("\nLetra central: ", tx.obter_caracter(palavra, meio))
      escreva("\nUltima letra: ", tx.obter_caracter(palavra, tamanho - 1))

      escreva("\nPalavra ao contrario: ")
      para (i = tamanho - 1; i >= 0; i--)
      {
         escreva(tx.obter_caracter(palavra, i))
      }

      // Conversão limpa
      para (i = 0; i < tamanho; i++)
      {
         c = tx.obter_caracter(palavra, i)

         maiusculo = maiusculo + paraMaiusculo(c)
         minusculo = minusculo + paraMinusculo(c)
      }

      escreva("\nEm MAIUSCULO: ", maiusculo)
      escreva("\nEm minusculo: ", minusculo)
   }
}