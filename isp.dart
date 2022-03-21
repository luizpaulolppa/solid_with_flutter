abstract class Conta {
  void depositar(int val) => print("depositando...");
  void transferir(int val) => print("transferindo...");
  void realizarEmprestimo() => print("realizando empréstimo...");
}

class ContaCorrente implements Conta {
  @override
  void depositar(int val) => print("realizando...");

  @override
  void transferir(int val) => print("realizando...");

  @override
  void realizarEmprestimo() => print("realizando...");
}

class ContaPoupanca implements Conta {
  @override
  void depositar(int val) => print("realizando...");

  @override
  void transferir(int val) =>
      throw Exception("A conta poupança não faz transferência");

  @override
  void realizarEmprestimo() =>
      throw Exception("A conta poupança não faz transferência");
}

main(List<String> args) {
  Conta c = ContaCorrente();
  c.realizarEmprestimo();
  c = ContaPoupanca();
  c.realizarEmprestimo();
}

/**
 * O problema que ocorre acima é que estamos dependendo de Conta e 
 * Conta nos oferece mais coisas do que realmente estamos utilizando.
 * 
 * Solução:
 */

abstract class Conta2 {
  void depositar(int val);
}

abstract class CestaDeServicos {
  void transferir(int val) => print("transferindo...");
  void realizarEmprestimo() => print("realizando empréstimo...");
}

class ContaCorrente2 extends Conta2 implements CestaDeServicos {
  @override
  void depositar(int val) => "";

  @override
  void transferir(int val) => "";

  @override
  void realizarEmprestimo() => "";
}

class ContaPoupanca2 extends Conta2 {
  @override
  void depositar(int val) => print("realizando...");
}

class ContaConjunto extends Conta2 {
  @override
  void depositar(int val) => print("realizando...");
}
