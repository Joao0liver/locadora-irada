import 'dart:io';

import 'classes/locacao.dart';
import 'classes/veiculos.dart';
import 'classes/cliente.dart';
import 'classes/caminhao.dart';
import 'classes/carro.dart';
import 'classes/moto.dart';

import 'package:collection/collection.dart';

void main() {

  // João Augusto de Oliveira Pereira - 00022224

  int option = 100;
  List<Veiculos> veiculosCadastrados = [];
  List<Cliente> clientesCadastrados = [];
  List<Locacao> locacoesRealizadas = [];

  do {

    print('\n============= LOCADORA IRADA =============\n1 - Cadastrar carro\n2 - Cadastrar moto\n3 - Cadastrar caminhão\n4 - Cadastrar cliente\n5 - Listar veículos\n6 - Listar clientes\n7 - Realizar locação\n8 - Finalizar locação\n9 - Consultar locações\n0 - Sair\n==========================================');
    stdout.write('Escolha uma opção: ');
    option = int.parse(stdin.readLineSync()!);

    switch (option) {
      
      case 1:
        // Cadastro de Carros
        try {

          print('\n======= Informe os dados do carro =======');
          stdout.write('Placa: ');
          String placa = stdin.readLineSync()!;
          stdout.write('Marca: ');
          String marca = stdin.readLineSync()!;
          stdout.write('Modelo: ');
          String modelo = stdin.readLineSync()!;
          stdout.write('Ano: ');
          int ano = int.parse(stdin.readLineSync()!);
          stdout.write('Número de Portas: ');
          int numPortas = int.parse(stdin.readLineSync()!);
          stdout.write('Tipo de Combustível: ');
          String combustivel = stdin.readLineSync()!;

          Carro novoCarro = Carro(placa: placa, marca: marca, modelo: modelo, ano: ano, numeroPortas: numPortas, tipoCombustivel: combustivel, disponivel: true);

          veiculosCadastrados.add(novoCarro);

        } catch (e) {
          print('\nOperação inválida!');
        }
        break;
      case 2:
        // Cadastro de Motos
        try {

          print('\n======= Informe os dados da moto =======');
          stdout.write('Placa: ');
          String placa = stdin.readLineSync()!;
          stdout.write('Marca: ');
          String marca = stdin.readLineSync()!;
          stdout.write('Modelo: ');
          String modelo = stdin.readLineSync()!;
          stdout.write('Ano: ');
          int ano = int.parse(stdin.readLineSync()!);
          stdout.write('Cilindradas: ');
          int cilindradas = int.parse(stdin.readLineSync()!);
          stdout.write('Tipo: ');
          String tipo = stdin.readLineSync()!;

          Moto novaMoto = Moto(placa: placa, marca: marca, modelo: modelo, ano: ano, cilindradas: cilindradas, tipo: tipo, disponivel: true);

          veiculosCadastrados.add(novaMoto);
          print('\nMoto cadastrada com sucesso!');

        } catch (e) {
          print('Operação inválida!');
        }
        break;
      case 3:
        // Cadastro de Caminhões
        try {

          print('\n======= Informe os dados do caminhão =======');
          stdout.write('Placa: ');
          String placa = stdin.readLineSync()!;
          stdout.write('Marca: ');
          String marca = stdin.readLineSync()!;
          stdout.write('Modelo: ');
          String modelo = stdin.readLineSync()!;
          stdout.write('Ano: ');
          int ano = int.parse(stdin.readLineSync()!);
          stdout.write('Capacidade de Carga: ');
          double capCarga = double.parse(stdin.readLineSync()!);
          stdout.write('Número de Eixos: ');
          int eixos = int.parse(stdin.readLineSync()!);

          Caminhao novoCaminhao = Caminhao(placa: placa, marca: marca, modelo: modelo, ano: ano, capacidadeCarga: capCarga, numeroEixos: eixos, disponivel: true);

          veiculosCadastrados.add(novoCaminhao);
          print('\nCaminhão cadastrado com sucesso!');

        } catch (e) {
          print('\nOperação inválida!');
        }
        break;
      case 4:
        // Cadastro de Clientes
        try {

          print('\n======= Informe os dados do cliente =======');
          stdout.write('Nome: ');
          String nome = stdin.readLineSync()!;
          stdout.write('CPF: ');
          int cpf = int.parse(stdin.readLineSync()!);
          stdout.write('Telefone: ');
          int telefone = int.parse(stdin.readLineSync()!);
          stdout.write('CNH: ');
          int cnh = int.parse(stdin.readLineSync()!);

          Cliente novoCliente = Cliente(nome: nome, cpf: cpf, telefone: telefone, cnh: cnh, bloqueado: false);

          clientesCadastrados.add(novoCliente);
          print('\nCliente cadastrado com sucesso!');

        } catch (e) {
          print('\nOperação inválida!');
        }
        break;
      case 5:
        // Lista os Veículos (mostra todas as informações)
        try {

          if (veiculosCadastrados.isNotEmpty) {
            veiculosCadastrados.forEach((veiculo) {
              veiculo.exibirDados();
            });
          } else {
            print('\nNão há veículos cadastrados!');
          }
          
        } catch (e) {
          print('\nOperação inválida!');
        }
        break;
      case 6:
        // Lista os Clientes (mostra todas as informações)
        try {

          if (clientesCadastrados.isNotEmpty) {
            clientesCadastrados.forEach((cliente) {
              cliente.exibirDados();
            });
          } else {
            print('\nNão há clientes cadastrados!');
          }
          
        } catch (e) {
          print('\nOperação inválida!');
        }
        break;
      case 7:
        // Realiza a locação
        try {

          print('\n======= Realizar Locação =======');
          stdout.write('Informe o CPF do cliente: ');
          int cpfCliente = int.parse(stdin.readLineSync()!);
          stdout.write('Informe a placa do veículo: ');
          String placaVeiculo = stdin.readLineSync()!;
          stdout.write('Duração em dias da locação: ');
          int diasLocados = int.parse(stdin.readLineSync()!);

          // Encontra o cliente cadastrado pelo CPF (primeira ocorrência ou nulo)
          Cliente? clienteEncontrado = clientesCadastrados.firstWhereOrNull(
            (cliente) => cliente.cpf == cpfCliente,
          );

          // Encontra o veículo cadastrado pela placa (primeira ocorrência ou nulo)
          Veiculos? veiculoEncontrado = veiculosCadastrados.firstWhereOrNull(
            (veiculo) => veiculo.placa == placaVeiculo,
          );

          if (clienteEncontrado != null && veiculoEncontrado != null) {

            if (clienteEncontrado.bloqueado != true && veiculoEncontrado.disponivel != false) {

              Locacao novaLocacao = Locacao(cliente: clienteEncontrado, veiculo: veiculoEncontrado, dias: diasLocados, valorTotal: 0, ativa: true);
              locacoesRealizadas.add(novaLocacao);
              veiculoEncontrado.disponivel = false;
              print('\nLocação realizada com sucesso!');

            } else {
              print('\nCliente bloqueado ou veículo indisponível!');
            }

          } else {
            print('\nCliente ou veículo não encontrado na base de dados!');
          }

        } catch (e) {
          print('\nOperação inválida!');
        }
        break;
      case 8:
        // Finaliza a locação
        try {

          print('\n======= Finalizar Locação =======');
          stdout.write('Informe a placa do veículo: ');
          String placaVeiculo = stdin.readLineSync()!;

          // Encontra a locação pela placa do veículo e se ela for ativa (primeira ocorrência ou nulo)
          Locacao? locacaoEncontrada = locacoesRealizadas.firstWhereOrNull(
            (locacao) => locacao.veiculo.placa == placaVeiculo && 
            locacao.ativa == true,
          );

          if (locacaoEncontrada != null) {

            // Encontra o veículo cadastrado pela placa (primeira ocorrência ou nulo)
            Veiculos? veiculoEncontrado = veiculosCadastrados.firstWhereOrNull(
              (veiculo) => veiculo.placa == locacaoEncontrada.veiculo.placa,
            );

            if (veiculoEncontrado != null) {

              locacaoEncontrada.ativa = false;
              veiculoEncontrado.disponivel = true;

              // Calcula o valor total da locação
              double valorTotal = veiculoEncontrado.calcularDiaria() * locacaoEncontrada.dias;
              locacaoEncontrada.valorTotal = valorTotal;

              print('\nLocação finalizada com sucesso!\n\nTotal a pagar: R\$$valorTotal');

            } else {
              print('Veículo não encontrado!');
            }

          } else {
            print('Locação não encontrada!');
          }

        } catch (e) {
          print('\nOperação inválida!');
        }
        break;
      case 9:
        // Consulta as locações (com todas as informações)
        try {

          if (locacoesRealizadas.isNotEmpty) {
            locacoesRealizadas.forEach((locacao) {
              locacao.exibirResumo();
            });
          } else {
            print('\nNão há locações registradas!');
          }
          
        } catch (e) {
          print('\nOperação inválida!');
        }
        break;
      case 0:
        // Encerra o programa
        try {
          stdout.write('Deseja sair do sistema? (S/N): ');
          String sair = stdin.readLineSync()!;
          if (sair == 'S' || sair == 's') {
            print('Encerrando o sistema...');
            option = 0;
          } else {
            option = 100;
          }
        } catch (e) {
          print('Ocorreu um erro na operação!');
        }
        break;
      default:
        print('\nOpção inválida! Tente novamente.');

    }

  } while(option!=0);

}