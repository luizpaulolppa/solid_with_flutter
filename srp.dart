/**
 * Uma classe deve ter somente um motivo para mudar.
 * Sua responsabilidade é sempre em cima de um e apenas um ator.
 */
class ContaCorrente {
  validarContaExistente() {
    // lógica crucial do negócio.
  }

  salvarModificacoes() {
    print("Salvar no DB...");
  }
}

/**
 * Solução: Devemos separar cada responsabilidade para sua regra de negócio crucial,
 * um objeto não pode e deve fazer mais do que é o domínio dele.
 * 
 * Lembre-se: Sua funcionalidade não importa a granularidade (pacote/modulo/classe/função)
 * não deve fazer o que não é proposto, normalmente um Funcionário não deve ser capaz de adicionar
 * um produto em seu domínio.
 * um Produto não deve ser capaz de exercer controle sobre o banco de dados, um pacote diz que faz A 
 * não pode fazer B.
 */

class ContaCorrenteRepository {
  void save() => print("salvando no db...");
}

class ContaCorrente2 {
  ContaCorrenteRepository _repository = ContaCorrenteRepository();

  validarContaExistente() {
    // lógica do negócio
  }

  void salvarModificacoes() {
    _repository.save();
  }
}
