# 🚗 Locadora Irada

Sistema simples de gerenciamento de uma locadora de veículos, desenvolvido em **Dart** como atividade acadêmica de laboratório para a disciplina de Desenvolvimento Mobile.

O projeto foi desenvolvido com o objetivo de praticar os conceitos da linguagem Dart e a aplicação de conceitos de programação orientada a objetos na construção de um sistema de locação de veículos simples.

## 🎯 Objetivo

O objetivo do projeto é desenvolver um sistema básico capaz de gerenciar veículos, clientes e locações, permitindo realizar operações comuns de uma locadora.
Com armazenamento local, que retém os dados em listas enquanto o programa estiver sendo executado.

## ⚙️ Funcionalidades

O sistema possui as seguintes funcionalidades:

- Cadastro de carros;
- Cadastro de motos;
- Cadastro de caminhões;
- Cadastro de clientes;
- Listagem de veículos cadastrados;
- Listagem de clientes cadastrados;
- Realização de locações;
- Finalização de locações;
- Consulta de locações.

Durante uma locação, o sistema verifica a disponibilidade do veículo e se o cliente está apto para realizar a operação. Ao finalizar a locação, o veículo volta a ficar disponível e o valor total é calculado de acordo com a diária e a quantidade de dias da locação.

## 🛠️ Tecnologias

- **Dart**
- **Dart SDK 3.13.0 ou superior**
- **Collection** — gerenciamento e consulta de coleções.

## 📋 Pré-requisitos

Antes de executar o projeto, certifique-se de ter o **Dart SDK** instalado em sua máquina.

Para verificar a instalação:

```bash
dart --version
```

## 🚀 Como executar

### 1. Clone o repositório

```bash
git clone https://github.com/Joao0liver/locadora-irada.git
```

### 2. Acesse a pasta do projeto

```bash
cd locadora-irada
```

### 3. Instale as dependências

```bash
dart pub get
```

### 4. Execute o projeto

```bash
dart run
```

O sistema será executado diretamente no terminal e apresentará um menu com as opções disponíveis.

## 📁 Estrutura do projeto

```text
locadora-irada/
├── classes/
│   ├── caminhao.dart
│   ├── carro.dart
│   ├── cliente.dart
│   ├── locacao.dart
│   ├── moto.dart
│   └── veiculos.dart
├── main.dart
├── pubspec.yaml
└── pubspec.lock
```

As classes presentes em `classes/` representam as principais entidades utilizadas pelo sistema, enquanto o arquivo `main.dart` contém o fluxo principal da aplicação.

## 📚 Contexto acadêmico

Projeto desenvolvido como atividade acadêmica de laboratório, com foco na adaptação e prática de conceitos de programação utilizando a linguagem **Dart** para a disciplina de Desenvolvimento Mobile.

## 👨‍💻 Autor

**João Augusto de Oliveira Pereira**

Estudante de **Sistemas de Informação**.

## 📄 Licença

Este projeto foi desenvolvido para fins **acadêmicos e educacionais**.

Sinta-se à vontade para consultar o código e utilizá-lo como referência para estudos.
