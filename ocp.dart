// princípio do aberto e fechado.
// OBS.: classes tem que ser abertas para extensão mas fachadas para modificações.

class Pagamento {
  void pagarBoleto() => print("pagando boleto");
  void pagarImposto() => print("pagando imposto");
}

/**
 * Solução
 */

abstract class Pagamento2 {
  int valor = 10;
  void pagar();
}

// Na extensão reutilizamos o valor
class PagamentoBoleto extends Pagamento2 {
  @override
  void pagar() => print("Pagando boleto $valor");
}

// na herança re-implementamos o valor.
class PagamentoImposto implements Pagamento2 {
  @override
  int valor = 10;

  @override
  void pagar() => print("Pagando imposto no valor: $valor");
}

// nova forma de pagamento
class PagamentoCartao extends Pagamento2 {
  @override
  void pagar() => print("Pagando com cartão");
}
