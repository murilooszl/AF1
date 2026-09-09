# SkyHorizon Airlines - Avaliação Formativa I

Implementação da **Avaliação Formativa I** da disciplina **Programação para Dispositivos Móveis**, utilizando **Dart com Null-Safety**, conforme o enunciado da atividade.

## Sobre a atividade

O projeto representa o núcleo orientado a objetos do sistema de emissão de passagens da SkyHorizon Airlines. Os exercícios são interligados e foram consolidados em um único arquivo executável chamado `main.dart`, conforme solicitado no enunciado.

## Conteúdo implementado

### Exercício 1 - Abstração e classes de apoio

Foram criadas as classes:

- `Passageiro`
- `PlataformaVenda`
- `Atendente`

Os atributos utilizam Null-Safety (`String?`, `int?` e `double?`).

### Exercício 2 - Agregação e construtor não nomeado

A classe `Passagem` possui:

- `codigoLocalizador` encapsulado em `_codigoLocalizador`;
- `Passageiro? passageiro`;
- `PlataformaVenda? plataforma`;
- `Atendente? atendente`;
- `String? observacoes`;
- construtor não nomeado `Passagem()`.

### Exercício 3 - Construtores nomeados

Foram implementados:

- `Passagem.somenteCodigo(...)`
- `Passagem.completa(...)`

### Exercício 4 - Parâmetros nomeados

Foram implementados:

- `Passagem.codigoEPassageiro(...)`
- `Passagem.all(...)`, utilizando `required` para `passageiro`, `plataforma` e `atendente`.

### Exercício 5 - Encapsulamento tradicional

Foram implementados:

- `getCodigoLocalizador()`
- `setCodigoLocalizador(...)`

O setter valida valores nulos ou vazios e exibe a mensagem solicitada pelo enunciado.

### Exercício 6 - Getters e setters nativos do Dart

Também foram implementados:

- `String? get codigoLocalizador`
- `set codigoLocalizador(...)`

Mantendo a mesma regra de validação.

### Exercício 7 - Métodos de negócio

A classe `Passagem` possui:

- `EmitirPassagem()`
- `CancelarPassagem()`
- `AtualizarPassagem()`
- `ConsultarPassagem(String codigo)`

Todos simulam as operações no console conforme solicitado.

### Exercício 8 - Herança

Foi criada a classe:

`PassagemPrimeiraClasse extends Passagem`

Ela possui o atributo `loungeAcesso` e utiliza `super.all(...)` no construtor.

### Exercício 9 - Mixins

Foram criados os mixins:

- `Logger`
- `Auditoria`

Ambos são aplicados à classe `PassagemPrimeiraClasse` por meio de `with`.

### Exercício 10 - Polimorfismo e execução

O método `AtualizarPassagem()` foi sobrescrito com `@override` em `PassagemPrimeiraClasse`, incluindo chamadas a `log()` e `auditar()`.

A função `main()` demonstra:

- uma `Passagem` padrão;
- uma `Passagem` usando `all()` com parâmetros nomeados;
- uma `PassagemPrimeiraClasse` usando seu construtor especializado;
- operações de emissão, atualização, consulta e cancelamento;
- validação do código localizador;
- outros construtores nomeados desenvolvidos nos exercícios anteriores.

## Estrutura do projeto

```text
SkyHorizon_Avaliacao_Formativa_I/
- main.dart
- README.md
- .gitignore
```
