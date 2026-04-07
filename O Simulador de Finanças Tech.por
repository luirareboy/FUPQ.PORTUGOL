/*
NOME: Luiz Claudio Souza Silva
DISCIPLINA: Lógica de Programação
TURMA: DS-14
*/

programa
{
   funcao inicio()
   {
      cadeia nome
      real saldo
      real gasto
      real restante
      inteiro opcao

      escreva("Digite seu nome: ")
      leia(nome)

      escreva("Digite seu saldo atual: ")
      leia(saldo)

      escreva("Quanto deseja gastar no setup? ")
      leia(gasto)

      restante = saldo - gasto

      // Decisão principal
      se (restante < 0)
      {
         escreva("\n", nome, ", compra negada! Saldo insuficiente.")
         escreva("\nFaltam R$ ", restante * -1, " para completar.")
      }
      senao
      {
         escreva("\nCompra aprovada!")
         escreva("\nSeu novo saldo é R$ ", restante)

         // Classificação financeira
         se (restante > 1000)
         {
            escreva("\nStatus: Rico!")
         }
         senao se (restante > 0)
         {
            escreva("\nStatus: Tá pago! Mas economize.")
         }
         senao
         {
            escreva("\nStatus: No limite!")
         }
      }

      // Menu final
      escreva("\n\nMENU:")
      escreva("\n1 - Ver extrato completo")
      escreva("\n2 - Sair do App")
      escreva("\nEscolha uma opção: ")
      leia(opcao)

      se (opcao == 1)
      {
         escreva("\n--- EXTRATO ---")
         escreva("\nNome: ", nome)
         escreva("\nSaldo inicial: R$ ", saldo)
         escreva("\nValor gasto: R$ ", gasto)
         escreva("\nSaldo final: R$ ", restante)
      }
      senao
      {
         escreva("\nSaindo do sistema...")
      }
   }
}