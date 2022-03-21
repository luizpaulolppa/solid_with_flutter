/**
 * Problema
 */

class PagamentoRepository {
  void save() => print("salvando pagamento....");
}

class ContaCorrente {
  late PagamentoRepository _repository;

  ContaCorrente() {
    _repository = PagamentoRepository();
  }

  void executarAlgumaLogica() {
    _repository.save();
  }
}

/**
 * Solução
 */

abstract class IPagamentoRepository {
  void save();
}

class PagamentoRepositoryImpl implements IPagamentoRepository {
  @override
  void save() => print("Salvando DB...");
}

class PagamentoRepositoryMockImpl implements IPagamentoRepository {
  @override
  void save() => print("Salvando Mock...");
}

class ContaCorrente2 {
  late IPagamentoRepository _repository;

  ContaCorrente2(IPagamentoRepository repository) {
    _repository = repository;
  }

  void executarAlgumaLogica() {
    _repository.save();
  }
}

main(List<String> args) {
  ContaCorrente2 c = ContaCorrente2(PagamentoRepositoryImpl());
  c.executarAlgumaLogica();
  c = ContaCorrente2(PagamentoRepositoryMockImpl());
  c.executarAlgumaLogica();
}
