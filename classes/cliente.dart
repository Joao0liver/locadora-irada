class Cliente {

  String _nome = '';
  int _cpf = 0;
  int _telefone = 0;
  int _cnh = 0;
  bool _bloqueado = false;

  Cliente({
    required this._nome,
    required this._cpf,
    required this._telefone,
    required this._cnh,
    required this._bloqueado
  });

  get nome => this._nome;
  set nome( value) => this._nome = value;

  get cpf => this._cpf;
  set cpf( value) => this._cpf = value;

  get telefone => this._telefone;
  set telefone( value) => this._telefone = value;

  get cnh => this._cnh;
  set cnh( value) => this._cnh = value;

  get bloqueado => this._bloqueado;
  set bloqueado( value) => this._bloqueado = value;

  void exibirDados() {
    print('\n============ Cliente ============\nNome: $nome\nCPF: $cpf\nTelefone: $telefone\nCNH: $cnh\nBloqueado: $bloqueado\n=================================');
  }

  void liberar() {
    this._bloqueado = false;
  }

  void bloquear() {
    this._bloqueado = true;
  }

}