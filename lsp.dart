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
