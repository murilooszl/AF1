// Avaliação Formativa I - Programação para Dispositivos Móveis
// SkyHorizon Airlines
// Implementação dos Exercícios 1 a 10 em um único arquivo executável.

// ============================================================
// Exercício 1: Abstração e Classes de Apoio
// ============================================================

class Passageiro {
  String? nome;
  String? cpf;
  String? rg;
  String? email;
  String? celular;
}

class PlataformaVenda {
  int? codigoCanal;
  String? nomeCanal;
}

class Atendente {
  String? nome;
  String? matricula;
  String? cargo;
  String? email;
  String? celular;
  double? salario;
}

// ============================================================
// Exercício 2: Agregação e Construtor Não Nomeado
// ============================================================

class Passagem {
  String? _codigoLocalizador = '';

  Passageiro? passageiro;
  PlataformaVenda? plataforma;
  Atendente? atendente;
  String? observacoes;

  // Construtor não nomeado.
  Passagem();

  // ==========================================================
  // Exercício 3: Construtores Nomeados
  // ==========================================================

  Passagem.somenteCodigo(String codigoLocalizador)
      : _codigoLocalizador = codigoLocalizador;

  Passagem.completa(
    String codigoLocalizador,
    Passageiro? passageiro,
    PlataformaVenda? plataforma,
    Atendente? atendente,
    String? observacoes,
  )   : _codigoLocalizador = codigoLocalizador,
        passageiro = passageiro,
        plataforma = plataforma,
        atendente = atendente,
        observacoes = observacoes;

  // ==========================================================
  // Exercício 4: Parâmetros Nomeados
  // ==========================================================

  Passagem.codigoEPassageiro({
    String? codigoLocalizador,
    this.passageiro,
  }) : _codigoLocalizador = codigoLocalizador ?? '';

  Passagem.all(
    String codigoLocalizador, {
    required this.passageiro,
    required this.plataforma,
    required this.atendente,
    this.observacoes,
  }) : _codigoLocalizador = codigoLocalizador;

  // ==========================================================
  // Exercício 5: Encapsulamento com Getter/Setter tradicionais
  // ==========================================================

  String? getCodigoLocalizador() {
    return _codigoLocalizador;
  }

  void setCodigoLocalizador(String? codigoLocalizador) {
    if (codigoLocalizador == null || codigoLocalizador.isEmpty) {
      print('Código localizador de passagem inválido!');
      return;
    }

    _codigoLocalizador = codigoLocalizador;
  }

  // ==========================================================
  // Exercício 6: Getters e Setters nativos do Dart
  // ==========================================================

  String? get codigoLocalizador => _codigoLocalizador;

  set codigoLocalizador(String? codigoLocalizador) {
    if (codigoLocalizador == null || codigoLocalizador.isEmpty) {
      print('Código localizador de passagem inválido!');
      return;
    }

    _codigoLocalizador = codigoLocalizador;
  }

  // ==========================================================
  // Exercício 7: Comportamentos e Métodos de Negócio
  // ==========================================================

  void EmitirPassagem() {
    print('Passagem emitida com sucesso!');
  }

  bool CancelarPassagem() {
    print('Passagem cancelada com sucesso!');
    return true;
  }

  void AtualizarPassagem() {
    print('Passagem atualizada com sucesso!');
  }

  Passagem ConsultarPassagem(String codigo) {
    print('Passagem consultada com sucesso!');
    return Passagem();
  }
}

// ============================================================
// Exercício 9: Mixins para Log e Auditoria
// ============================================================

mixin Logger {
  void log(String mensagem) {
    print(mensagem);
  }
}

mixin Auditoria {
  void auditar(String mensagem) {
    print('[Auditoria]: $mensagem');
  }
}

// ============================================================
// Exercício 8: Especialização com Herança
// Exercício 9: Aplicação dos Mixins
// ============================================================

class PassagemPrimeiraClasse extends Passagem with Logger, Auditoria {
  String? loungeAcesso;

  PassagemPrimeiraClasse(
    String codigoLocalizador,
    Passageiro? passageiro,
    PlataformaVenda? plataforma,
    Atendente? atendente,
    String? observacoes, {
    required this.loungeAcesso,
  }) : super.all(
          codigoLocalizador,
          passageiro: passageiro,
          plataforma: plataforma,
          atendente: atendente,
          observacoes: observacoes,
        );

  // ==========================================================
  // Exercício 10: Sobrescrita Polimórfica
  // ==========================================================

  @override
  void AtualizarPassagem() {
    print('Passagem de Primeira Classe atualizada com sucesso!');
    log('Alteração realizada pelo atendente: ${super.atendente?.nome}');
    auditar('Verificação de segurança realizada para a Primeira Classe.');
  }
}

// ============================================================
// Exercício 10: Execução Geral
// ============================================================

void main() {
  print('========== SKYHORIZON AIRLINES ==========');
  print('Demonstração dos pilares da POO em Dart');
  print('');

  // Dados de apoio.
  final passageiro = Passageiro()
    ..nome = 'Murilo Silva'
    ..cpf = '000.000.000-00'
    ..rg = '00.000.000-0'
    ..email = 'murilo@example.com'
    ..celular = '(11) 99999-9999';

  final plataforma = PlataformaVenda()
    ..codigoCanal = 101
    ..nomeCanal = 'App SkyHorizon';

  final atendente = Atendente()
    ..nome = 'Ana Souza'
    ..matricula = 'ATD001'
    ..cargo = 'Agente de Atendimento'
    ..email = 'ana@skyhorizon.com'
    ..celular = '(11) 98888-8888'
    ..salario = 3500.00;

  // ----------------------------------------------------------
  // Passagem padrão - construtor não nomeado.
  // ----------------------------------------------------------
  print('--- Passagem padrão ---');
  final passagemPadrao = Passagem();
  passagemPadrao.passageiro = passageiro;
  passagemPadrao.plataforma = plataforma;
  passagemPadrao.atendente = atendente;
  passagemPadrao.observacoes = 'Passagem criada para demonstração.';
  passagemPadrao.setCodigoLocalizador('SH001');

  print('Código (getter tradicional): ${passagemPadrao.getCodigoLocalizador()}');
  passagemPadrao.EmitirPassagem();
  passagemPadrao.AtualizarPassagem();
  passagemPadrao.ConsultarPassagem('SH001');
  print('Cancelamento retornou: ${passagemPadrao.CancelarPassagem()}');
  print('');

  // ----------------------------------------------------------
  // Passagem usando o construtor all() com parâmetros nomeados.
  // ----------------------------------------------------------
  print('--- Passagem com construtor all() ---');
  final passagemAll = Passagem.all(
    'SH002',
    passageiro: passageiro,
    plataforma: plataforma,
    atendente: atendente,
    observacoes: 'Venda realizada pelo aplicativo.',
  );

  print('Código inicial: ${passagemAll.codigoLocalizador}');
  passagemAll.codigoLocalizador = 'SH002-ATUALIZADO';
  print('Código após setter nativo: ${passagemAll.codigoLocalizador}');
  print('');

  // ----------------------------------------------------------
  // Demonstração da validação do setter.
  // ----------------------------------------------------------
  print('--- Validação de código ---');
  passagemAll.setCodigoLocalizador(null);
  passagemAll.codigoLocalizador = '';
  print('Código permanece válido: ${passagemAll.codigoLocalizador}');
  print('');

  // ----------------------------------------------------------
  // Outros construtores nomeados.
  // ----------------------------------------------------------
  print('--- Construtores nomeados adicionais ---');
  final somenteCodigo = Passagem.somenteCodigo('SH003');
  print('Somente código: ${somenteCodigo.codigoLocalizador}');

  final completa = Passagem.completa(
    'SH004',
    passageiro,
    plataforma,
    atendente,
    'Passagem preenchida por completo.',
  );
  print('Passagem completa: ${completa.codigoLocalizador}');

  final codigoEPassageiro = Passagem.codigoEPassageiro(
    codigoLocalizador: 'SH005',
    passageiro: passageiro,
  );
  print('Código e passageiro: ${codigoEPassageiro.codigoLocalizador}');
  print('');

  // ----------------------------------------------------------
  // Passagem Primeira Classe: herança + mixins + override.
  // ----------------------------------------------------------
  print('--- Passagem Primeira Classe ---');
  final passagemVip = PassagemPrimeiraClasse(
    'VIP001',
    passageiro,
    plataforma,
    atendente,
    'Acesso exclusivo ao lounge.',
    loungeAcesso: 'Lounge SkyHorizon Premium',
  );

  print('Código VIP: ${passagemVip.codigoLocalizador}');
  print('Lounge: ${passagemVip.loungeAcesso}');
  passagemVip.EmitirPassagem();
  passagemVip.AtualizarPassagem();

  print('');
  print('========== FIM DA DEMONSTRAÇÃO ==========');
}
