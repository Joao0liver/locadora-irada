class Veiculos {

  String _placa = '';
  String _marca = '';
  String _modelo = '';
  int _ano = 0;
  bool _disponivel = false;

  Veiculos({
    required this._placa, 
    required this._marca,
    required this._modelo,
    required this._ano,
    required this._disponivel
  });

  get placa => this._placa;
  set placa( value) => this._placa = value;

  get marca => this._marca;
  set marca( value) => this._marca = value;
  
  get modelo => this._modelo;
  set modelo( value) => this._modelo = value;

  get ano => this._ano;
  set ano( value) => this._ano = value;

  get disponivel => this._disponivel;
  set disponivel( value) => this._disponivel = value;

  void exibirDados() {
    print('\n============ Veículo ============\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nDisponível: $disponivel\n========================');
  }

  double calcularDiaria() {
    return 0.0;
  }

  void alterarDisponibilidade(bool valor) {
    this._disponivel = valor;
  }

}