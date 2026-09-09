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
├── main.dart
├── README.md
└── .gitignore
```

## Como executar

É necessário ter o **Dart SDK** instalado.

No terminal, dentro da pasta do projeto:

```bash
dart run main.dart
```

Também pode ser executado diretamente com:

```bash
dart main.dart
```

## Como publicar no GitHub

O enunciado determina que a atividade seja publicada em um **repositório público do GitHub** e que o link seja enviado pelo **Google Classroom**.

### 1. Criar o repositório

1. Entre em https://github.com/.
2. Faça login na sua conta.
3. Clique em **New repository**.
4. Escolha um nome, por exemplo:
   `SkyHorizon-Avaliacao-Formativa-I`
5. Selecione **Public**.
6. Não é necessário criar arquivos adicionais no GitHub, pois o projeto já contém `README.md` e `.gitignore`.
7. Clique em **Create repository**.

### 2. Publicar os arquivos pelo navegador

Na página do novo repositório:

1. Clique em **Add file**.
2. Clique em **Upload files**.
3. Arraste para a página os arquivos:
   - `main.dart`
   - `README.md`
   - `.gitignore`
4. Aguarde o carregamento.
5. Em **Commit changes**, use uma mensagem como:
   `Entrega da Avaliação Formativa I`
6. Clique em **Commit changes**.

### 3. Conferir a entrega

Depois do commit, confirme que o repositório está **público** e que o arquivo `main.dart` aparece na página principal.

### 4. Enviar no Google Classroom

1. Copie o endereço do seu repositório público no GitHub.
2. Abra a atividade correspondente no Google Classroom.
3. Cole o link do repositório no campo de resposta/entrega solicitado.
4. Faça o envio da atividade.

## Alternativa usando Git no terminal

Depois de criar um repositório público vazio no GitHub, dentro da pasta do projeto:

```bash
git init
git add .
git commit -m "Entrega da Avaliação Formativa I"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/SkyHorizon-Avaliacao-Formativa-I.git
git push -u origin main
```

Substitua `SEU_USUARIO` pelo seu usuário do GitHub e use a URL exata do seu repositório.
