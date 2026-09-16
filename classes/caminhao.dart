import 'veiculos.dart';

class Caminhao extends Veiculos {

  double _capacidadeCarga = 0;
  int _numeroEixos = 0;

  Caminhao({
    required placa,
    required marca,
    required modelo,
    required ano,
    required disponivel,
    required this._capacidadeCarga,
    required this._numeroEixos
  })
    :super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel);

  get capacidadeCarga => this._capacidadeCarga;
  set capacidadeCarga( value) => this._capacidadeCarga = value;

  get numeroEixos => this._numeroEixos;
  set numeroEixos( value) => this._numeroEixos = value;

  @override
  double calcularDiaria() {
    return 0.50 * this._capacidadeCarga;
  }

  @override
  void exibirDados() {
    print('\n============ Caminhão ============\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nDisponível: $disponivel\nCapacidade de Carga: $capacidadeCarga\nEixos: $numeroEixos\n==================================');
  }

}