import 'cliente.dart';
import 'veiculos.dart';

class Locacao {

  Cliente _cliente;
  Veiculos _veiculo;
  int _dias = 0;
  double _valorTotal = 0;
  bool _ativa = false;

  Locacao({
    required this._cliente,
    required this._veiculo,
    required this._dias,
    required this._valorTotal,
    required this._ativa
  });

  get cliente => this._cliente;
  set cliente( value) => this._cliente = value;

  get veiculo => this._veiculo;
  set veiculo( value) => this._veiculo = value;

  get dias => this._dias;
  set dias( value) => this._dias = value;

  get valorTotal => this._valorTotal;
  set valorTotal( value) => this._valorTotal = value;

  get ativa => this._ativa;
  set ativa( value) => this._ativa = value;

  void calcularValor(double diaria) {
    this._valorTotal = this._dias * diaria;
  }

  void finalizar() {
    this._ativa = false;
  }

  void exibirResumo() {
    print('\n======== Resumo da Locação ========\nCliente: ${cliente.nome}\nVeículo: ${veiculo.placa}\nDias Alugados: $dias\nValor: $valorTotal\nAtiva: $ativa\n==================================');
  }

}