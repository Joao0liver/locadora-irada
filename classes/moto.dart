import 'veiculos.dart';

class Moto extends Veiculos {

  int _cilindradas = 0;
  String _tipo = '';

  Moto({
    required placa,
    required marca,
    required modelo,
    required ano,
    required disponivel,
    required this._cilindradas,
    required this._tipo
  })
    :super(placa: placa, marca: marca, modelo: modelo, ano: ano, disponivel: disponivel);

  get cilindradas => this._cilindradas;
  set cilindradas( value) => this._cilindradas = value;

  get tipo => this._tipo;
  set tipo( value) => this._tipo = value;

  @override
  double calcularDiaria() {
    return 90.0;
  }

  @override
  void exibirDados() {
    print('\n============ Moto ============\nPlaca: $placa\nMarca: $marca\nModelo: $modelo\nAno: $ano\nDisponível: $disponivel\nCilindradas: $cilindradas\nTipo: $tipo\n==============================');
  }

}