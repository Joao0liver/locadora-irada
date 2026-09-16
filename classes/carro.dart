import 'veiculos.dart';

class Carro extends Veiculos {

  int _numeroPortas = 0;
  String _tipoCombustivel = '';

  Carro({
    required placa,
    required marca,
    required modelo,
    required ano,
    required disponivel,
    required this._numeroPortas,
    required this._tipoCombustivel
  }) 
    :super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel);

  get numeroPortas => this._numeroPortas;
  set numeroPortas( value) => this._numeroPortas = value;

  get tipoCombustivel => this._tipoCombustivel;
  set tipoCombustivel( value) => this._tipoCombustivel = value;

  @override
  double calcularDiaria() {
    return 150.0;
  }

  @override
  void exibirDados() {
    print('\n============ Carro ============\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nDisponível: $disponivel\nNúmero de Portas: $numeroPortas\nCombustível: $tipoCombustivel\n===============================');
  }

}