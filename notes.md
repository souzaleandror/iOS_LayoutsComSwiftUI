#### 03/08/2023

Curso de iOS: layouts com SwiftUI

@01-De UIKit para SwiftUI

@@01
Introdução

[00:00] Olá, seja bem-vindo ou seja bem-vinda à Alura. Nesse curso nós vamos falar sobre SwiftUI, que é um novo framework que foi lançado no ano de 2019 pela Apple. Foi anunciado no evento chamado WWDC - Apple Worldwide Developers Conference, que é um evento anualmente realizado pela Apple nos Estados Unidos, no estado da Califórnia. Geralmente ocorre nessa cidade aqui em San Jose, pertinho ali de São Francisco.
[00:29] É um evento que é muito interessante para nós, profissionais de desenvolvimento de software para os dispositivos da Apple, que eles anunciam as principais novidades, atualizações e tudo mais. Essa imagem resume muito bem como nós ficamos assistindo o evento no ano passado, que foi, de fato, bastante novidades, inclusive foi anunciado esse framework que nós vamos falar durante esse curso, que é o SwiftUI.

[00:57] Então nós vamos iniciar o nosso curso vendo as principais diferenças entre o UIKit e o SwiftUI, como, por exemplo, onde está o arquivo Storyboard, o que aconteceu com o ViewController e também nós vamos começar a entender a sintaxe declarativa do SwiftUI. Você vai perceber que é uma sintaxe bem intuitiva, parecida com outras plataformas como Flutter e alguma coisa do tipo, é bem interessante.

[01:27] Nós vamos também começar a entender as principais motivações e vantagens de se trabalhar com SwiftUI, como por exemplo quando nós precisávamos criar um aplicativo para iOS, geralmente nós utilizamos o UIKit, mas se nós precisássemos criar um aplicativo para Mac, para o computador mesmo da Apple, nós teríamos que aprender um outro framework, chamado AppKit, que é bem diferente do UIKit.

[01:57] Então nós tínhamos que aprender duas sintaxes bem diferentes para criar aplicativos similares para os dispositivos da Apple. O SwiftUI vem justamente para cobrir essas deficiências, como por exemplo: nós conseguimos através de uma única sintaxe, do SwiftUI, criar aplicativos para iOS, para Mac, para tvOS, para iPadOS e watchOS. Então, resumindo é uma sintaxe única que você vai conseguir criar aplicativos para todos esses positivo da Apple, então é bem interessante.

[02:20] Depois nós vamos seguir vendo as principais novidades, como por exemplo a pré-visualização, então é um recurso bem interessante, onde nós vamos criando o nosso layout e tem uma área específica do Xcode onde nós vamos conseguir ver, em tempo real, as modificações. Então eu coloco, por exemplo, um texto, eu já consigo ver sem precisar buildar o aplicativo a todo momento no simulador, então são algumas novidades bem interessantes.

[03:00] Na terceira aula, nós vamos nos aprofundar nos componentes de interface do usuário, como por exemplo: textos, listas - que em UIKit chamamos de tableview - botões e o principal, entender como é que funciona esse esquema de empilhamento de elementos no SwiftUI. Por isso é muito interessante que você já tenha feito o curso de layout para iOS, em UIKit mesmo, mas o conceito é basicamente o mesmo.

[03:36] Então é bem interessante que você já esteja familiarizado com Steck View e tudo mais para que quando você chegue nesse ponto do curso, você consiga entender sem nenhum problema. Depois nós vamos seguir testando os aplicativos em um iPhone e em um iPad e vamos começar a entender como é que fazemos para que migrar esse mesmo layout para os dois tamanhos.

[04:01] Nós vamos começar a ver então como é que trabalhamos com size class no SwiftUI e vamos aprender tudo isso de forma prática, através de um projeto que, se você acompanha os cursos aqui, você já conhece, que é o aplicativo Alura Viagens. Então é bem interessante, porque se você acompanhou os cursos aqui de iOS, você vai se você vai ter uma base em UIKit e agora você vai aprender a criar o mesmo aplicativo em SwiftUI.

[04:29] Então fazer esse depara vai ser bem interessante. Nós vamos aprender de forma prática como é que interagimos com esse aplicativo, como é que criamos navegação de telas, como é que customizamos esses elementos e, no final, vamos ter um resultado parecido com esse. Esse é conteúdo que nós vamos ver durante esse curso e eu espero você.

@@02
Criando projeto com SwiftUI

[00:00] Olá, seja bem-vindo, seja bem-vinda, à primeira aula do nosso curso de SwiftUI aqui na Alura. Agora que você acabou de assistir o vídeo de introdução, onde eu apresento para você todo conteúdo que nós vamos estudar juntos durante essa jornada, vamos começar, sem perda de tempo, criando o nosso primeiro projeto com SwiftUI. Nesse vídeo, a ideia é analisarmos as principais diferenças que essa biblioteca nos traz logo quando nós criamos um novo projeto.
[00:28] Então nós vamos analisar todas as estruturas para que consigamos começar então o nosso projeto Alura Viagens. Primeiro ponto de atenção que eu queria comentar com vocês é em relação à versão do Xcode. Eu indico, para que você consiga seguir esse curso sem nenhum problema, que você também utilize a mesma versão, ou a versão 11, posterior, assim não vamos encontrar muitas modificações em relação ao posicionamento dos elementos e das ferramentas na IDE.

[01:00] Então vamos lá. Eu vou clicar aqui em criar novo projeto. É aberta essa caixa de diálogo, onde já vem a opção Single View App, nós vamos manter essa opção selecionada, vou clicar em Next. Primeira coisa que ele me pergunta é o nome do nosso produto, ou seja, o nome do nosso aplicativo. Nós vamos utilizar o nome Alura Viagens: "alura-viagens". Bacana.

[01:27] Uma coisa nova, que apareceu aqui para nós, é essa caixinha aqui, chamada User Interface. Repara que já vem selecionada a opção SwiftUI, que é a nova biblioteca, que nós vamos estudar aqui, de criação de interface. Só que se eu também quiser utilizar a opção de Storyboard, [CHIBS] e tudo mais, eu ainda tenho a opção aqui Storyboard.

[01:52] Então tem o SwiftUI e Storyboard. Vamos manter a opção SwiftUI. Bacana. Vou clicar em Next e eu vou escolher o diretório onde eu quero salvar o meu projeto. Eu vou manter a opção Desktop e vou clicar em criar. Logo quando criamos o projeto com a opção SwiftUI selecionada, você já vai ver algumas diferenças na sua tela e a vamos analisar juntos agora.

[02:19] Repara que a tela veio dividida no meio, onde nós temos aqui o arquivo de código e nós temos aqui também o que nós chamamos de pré-visualização. Isso é um dos pontos mais interessantes sobre SwiftUI, nós conseguimos fazer uma alteração no nosso código e ver em real time a alteração no lado direito, desde que esteja implementado protocolo de pré-visualização na sua View.

[02:47] Então olha só: eu vou clicar aqui em Resume para que ele carregue a pré-visualização da View, que nós estamos codificando aqui do lado esquerdo, que na verdade já veio por padrão esse texto "Hello, World!". E vamos então começar a alterar algumas coisas para ver como isso funciona. Mas antes disso, eu vou mexer aqui na visualização, repara que está muito grande a pré-visualização.

[03:16] Então vou clicar aqui no zoom, vou selecionar 75%, repara que já ficou um pouquinho melhor e eu vou também clicar para fechar o menu do lado direito. Então vou clicar aqui e eu tenho mais espaço para ver o meu código e também a pré-visualização. Bacana, vamos então começar a analisar a estrutura básica que nós temos aqui, que já veio criada.

[03:47] Nós temos o "import" do "SwiftUI". Antigamente nós tínhamos o import do UIKit, quando nós estamos utilizando Storyboard e tudo mais. Agora nós temos o "import SwiftUI". E aqui embaixo nós temos uma "struct" chamada "ContentView:" e ela implementa as características de uma "View:". Quais são essas características?

[04:13] Nesse momento é uma variável chamada "body:", então nós temos uma variável chamada "body", que é do tipo alguma View, uma View, no caso, genérica, tipo View mesmo. Embaixo nós temos um texto: texto. E nós temos aqui uma string "("Hello, World!")". Bem bacana. Primeiro teste que nós vamos fazer nesse vídeo é alterar o conteúdo desse texto.

[04:41] Eu vou apagar aqui o "("Hello, World!") e eu vou escrever aqui "("Primeira aula de SwiftUI"). Repara que quando nós alteramos o texto aqui do lado esquerdo da nossa View, o preview, ou seja, a pré-visualização já entende e já altera para nós, assim conseguimos ver em tempo real as modificações de UI que nós temos na nossa View. Isso é muito bacana, muito bacana mesmo.

[05:13] Se você trabalha com iOS há bastante tempo, ou há pouco tempo, também você vai notar essa diferença em relação a subir o simulador e a utilizar o preview. Então é muito tempo perdido quando precisamos, a todo momento, ficar subindo simulador e tudo mais. Repare que quando eu alterei aqui cima o tipo do device, ele automaticamente já altera aqui o preview também. Isso é muito bacana.

[05:43] Essa é a primeira modificação drástica que nós temos, esse recurso de pré-visualização, que exatamente essa segunda "struct" que nós estamos vendo aqui embaixo. Olha, tem uma "struct" chamada "ContentView" que nada mais é do que o nome da View, que já veio criada para nós, seguido de "_Previews:". O que essa "struct" tem?

[06:08] Ela implementa as características de um "PreviewProvider", que nada mais é do que um protocolo que implementa uma variável estática chamada "previews:". Aqui embaixo eu coloco o nome da View que eu quero que eu veja a pré-visualização, nesse caso, "ContenView()", que é o nome dessa View aqui de cima.

[06:31] Ou seja, resumindo, essa "struct" aqui de baixo, ela serve somente para nos mostrar a pré-visualização da View que nós estamos vendo. Tanto é que se eu tirar e apagar esse trecho de código, essa pré-visualização vai sumir - vai sumir. Mas repara que o nosso código não aponta nenhum erro, porque não é obrigatório implementar essa pré-visualização.

[06:57] Vou até fazer um teste, que é rodar o simulador, para que você veja que vai dar sucesso e vamos conseguir visualizar, no simulador, da mesma forma .Ou seja, a pré-visualização não é obrigatória, ela apenas nos ajuda a ver as alterações de layout em tempo real. Então aqui estamos subindo o simulador, repara que é um tempo significativo de espera para que ele compile o nosso código e suba no simulador, mas a pré-visualização não interfere no funcionamento do nosso código, nem nada. É somente para nos ajudar.

@@03
Pré-visualização do layout

Uma das grandes novidades do SwiftUI é a possibilidade de ver as alterações feitas no layout em tempo real através do Xcode. Para isso, é necessário:

Implementar o protocolo PreviewProvider.
 
Correto! Quando criamos um arquivo do tipo SwiftUI, automaticamente são gerados 2 structs. A primeira struct com o conteúdo da View. E a segunda com a implementação do protocolo PreviewProvider.
Alternativa correta
Gerar um build com o simulador.
 
Alternativa correta
Configurar o arquivo info.plist para ter o suporte à pré-visualização.
 
Alternativa correta
Setar uma variável na view que implemente a pré-visualização.

@@04
Características de classe

[00:00] Antes de continuarmos com o nosso projeto, eu queria explicar para vocês dois tópicos que talvez você tenha olhado com um pouquinho de estranheza no vídeo passado, que é justamente sobre essa keyword "struct", que pouco nós vimos nos cursos passados. E também sobre esse tipo de variável, que chamamos em Swift, de variável computada.
[00:23] Então vamos dar uma pausa agora, eu vou explicar nesse vídeo para vocês, a importância de "struct", classe e variável computada e depois voltamos para continuar o nosso projeto. Eu vou utilizar o Playground, que vai nos ajudar bastante nessa explicação. Então ao clicar aqui em arquivo, novo e vou escolher opção Playground. Legal.

[00:45] Vou manter aqui essa opção e eu vou chamar de "structxclass". Vou dar um Create. Legal, temos aqui então um arquivo Playground, vamos começar falando de classe, que nós já estamos acostumados a trabalhar. Então quando estamos trabalhando com classe ou "Class", nós temos coisas que nós já conhecemos, como por exemplo: variáveis e constantes, podemos criar métodos - criar métodos.

[01:29] Podemos trabalhar com herança, nós podemos implementar protocolos e várias outras coisas que nós já conhecemos, certo? Mas vamos retomar aqui, para que consigamos ver as diferenças. Vou criar uma classe, chamada "Pessoa", essa classe vai ter alguns atributos. Quais são esses atributos? "nome:", toda a pessoa tem nome, "sobrenome:" e até aqui acho que está ok.

[02:08] Eu vou criar aqui então o método construtor e eu vou passar algumas informações para que eu consiga criar a classe. Eu vou passar o "(nome:)", que é uma "String" e eu vou passar o ", sobrenome:", que também é "String". Eu pego o meu atributo da classe e falo que é igual ao que eu estou recebendo por parâmetro. Beleza. Vou dar o Playground só para ver se não tem nenhum bug. Cliquei aqui, está dando Running aqui em cima.

[02:48] A ideia é a seguinte: vamos instanciar uma classe "Pessoa" passando um nome e depois vamos instanciar uma outra classe e vamos ver uma diferença de classe para "struct", que eu vou mostrar para vocês, que é o seguinte - olha, ele já rodou aqui, não tem nenhum problema com nosso código. Então eu vou começar aqui criando - não, instanciando essa classe. Então, por exemplo, o "let aluno = Pessoa".

[03:21] Esse aluno vai ter um "nome", vou colocar aqui, por exemplo, "Diego", "Silva". Criei o primeiro aluno. Agora eu vou criar um novo aluno: "let novoAluno =" ao primeiro aluno, que é esse que nós acabamos de criar aqui na linha de cima. Eu vou fazer o seguinte, olha: vou imprimir aqui para nós "("ALUNOS: --")", o primeiro que nós criamos e o novo aluno. Vamos rodar isso aqui para ver?

[04:011 Olha que bacana: então eu tenho aqui "ALUNOS: --" "Diego" e "Diego". É óbvio que o nome dele vai ser Diego porque nós criamos um aluno chamado Diego e passamos a referência dessa primeira classe para o novo aluno. Perceba bem na palavra referência - isso faz muito sentido, porque agora vamos fazer uma nova modificação. Olha só: eu vou pegar aqui esse aluno "aluno.nome =" e vou setar um novo nome para ele.

[04:46] Agora não vai ser mais Diego, vai ser "= "Alberto" ". Ele vai reclamar porque estamos trabalhando com constante, então eu vou mudar aqui para "var". Vou tentar rodar e vamos tentar novamente imprimir esses valores. Então "("APÓS ALTERAÇÃO: --")" nós temos esse resultado, "(aluno.nome)" e aqui nós temos o "(novoAluno.nome)". Vamos ver o que aconteceu?

[05:28] Vou rodar. O Playground está processando e nós temos as seguintes saídas: a primeira vez nós tínhamos o Diego e criamos o novo aluno, passamos a referência do primeiro aluno para o segundo e é óbvio que ele imprimiu o nome igual. Só que agora a diferença é a seguinte: eu alterei o nome somente do primeiro aluno, então até esse momento aqui, os dois alunos se chamavam Diego.

[06:09] Eu alterei o nome do primeiro e pedi para imprimir novamente o nome dos dois alunos e ele alterou para Alberto. Por que o nome do novo aluno é Alberto, se eu só alterei o nome do primeiro aluno? Porque quando trabalhamos com classe, trabalhamos com referência. Então essa é a primeira modificação que nós temos que entender: quando nós trabalhamos com classe, nós estamos trabalhando com a referência do objeto.

[06:55] Ou seja, nós temos aqui o primeiro aluno. Eu criei o segundo aluno passando a referência do primeiro aluno. Se eu fizer uma alteração aqui, vai ser refletido aqui porque os dois têm a mesma referência. Dessa forma, nós trabalhamos com algo que, se você pesquisar na internet sobre classe, eles chamam de Reference Type, tipo de referência.

[07:20] Ou seja, em inglês, você vai encontrar esse assunto por Reference Type. Classe trabalha com Reference Type, ou seja, nós passamos a referência. Isso é muito importante, porque no próximo vídeo nós vamos estudar um pouquinho sobre struct e você vai ver que struct não trabalha com Reference Type. Vamos ver isso no próximo vídeo.

@@05
Características de Struct

[00:00] Acabamos de relembrar algumas características de classes e nós entendemos que ela trabalha com Reference Type, ou seja, uma referência para os outros objetos. Agora vamos falar um pouco sobre struct, que é novidade. Quando criamos esse projeto, nós nos deparamos algumas vezes com essa keyword, ou seja, com essa palavrinha chave struct. O que é? Nós vamos ver agora.
[00:24] Eu vou começar criando então um novo arquivo Playground, para testarmos, eu vou chamar ele de "struct" e vou dar um Create. Legal, então eu vou apagar aqui essa string e vou criar uma "struct" chamada "Pessoa". Primeira coisa: uma struct, ela é muito parecida com uma classe. Ela tem métodos, ela tem atributos, ela tem variáveis, ela tem métodos construtores, então é muito parecida com uma classe.

[01:03] Por isso eu vou utilizar o mesmo exemplo, para que consigamos enxergar as diferenças. Vou começar aqui então com os atributos "nome: ", do tipo ": String", e "sobrenome" do tipo ": String". Vou criar aqui um aluno. Repara que quando eu inicializo a classe, ele já traz um método construtor sem que tenhamos criado esse método. Então essa é a primeira diferença: struct nós não precisamos obrigatoriamente criar um método construtor, ele cria analisando os atributos que nós temos. Beleza?

[01:44] Então vamos criar aqui um aluno chamado "Diego" "Silva". Legal, e eu vou criar um novo aluno "novoAluno". E esse novo aluno vai ser igual ao primeiro aluno, então "novoAluno = aluno" de cima. E vamos testar: "print(aluno.nome)", "print(novoAluno.nome)". Vou rodar aqui no Playground, vamos dar uma olhada. Diego, Diego. Até aqui tudo bem, parecido com classe, certo? Agora que vem a modificação.

[02:35] Eu vou pegar aqui o aluno, que nós criamos aqui em cima, esse aluno aqui, e vou fazer o seguinte: "aluno.nome = "Felipe" " - ele não vai deixar porque aqui está "let", eu vou mudar variável. "aluno.nome = "Felipe" ". Nós vamos imprimir de novo os valores após a modificação, então "print("NOVOS VALORES: --")". Eu vou imprimir os valores dos nomes novamente, então "print(aluno.nome)", "print(novoAluno.nome)".

[03:32] Agora vamos ver o que aconteceu. Vou rodar aqui o Playground novamente. Olha só: aqui nós temos uma diferença entre a classe e entre o struct. Repara que nós temos aqui o Felipe e nós temos aqui o Diego. Quando nós estávamos trabalhando com classe, no vídeo anterior, quando nós mudávamos o primeiro objeto, ele alterava o segundo porque nós trabalhávamos com referência.

[04:05] Nesse caso, nós estamos trabalhando com cópia, uma cópia do valor. Então a grande diferença de struct e class é essa aqui: struct nós trabalhamos então com cópia do valor ou conhecemos isso também como Value Type, nós passamos uma cópia, não é referência. Por isso que quando nós alteramos o valor do primeiro aluno só alterou o primeiro, porque fizemos uma cópia. Se eu alterar aqui, segue a vida. Se eu alterar aqui, segue a vida.

[04:47] Então os dois objetos, as duas structs, são independentes. Nós passamos o valor delas quando copiamos dessa forma aqui, que chamamos de Value Type, mas cada um com as suas características. Por isso que quando eu altero uma, não reflete na outra. Essa é uma das grandes diferenças: struct nós trabalhamos com Value Type. Uma outra diferença, também muito importante de você conhecer, é que quando nós trabalhamos com struct, nós não podemos utilizar - nós não conseguimos na verdade utilizar herança.

[05:25] Você vai me perguntar: "Beleza, Andriu. Com struct nós não conseguimos trabalhar com herança, mas o que essa struct está fazendo?". Repara que temos aqui uma struct, que se chama "ContentView" e ela implementa a View. Na verdade ela não está herdando de View, ela está implementando um protocolo, então tem uma diferença grande. Como é que você sabe que é um protocolo?

[05:55] Se eu apertar a tecla "Command", clicar em View e vir na definição, ele deve me trazer aqui a definição do protocolo. "View" é um protocolo público. Ou seja, uma struct, ela consegue implementar um protocolo mas não consegue trabalhar com herança. Vamos testar? Olha só: vou abrir aqui o arquivo do Playground novamente - deixa eu ver aonde ele está. Está aqui.

[06:28] E o que vamos fazer? Eu vou criar aqui, por exemplo, uma classe chamada aluno, uma struct chamada aluno: "struct Aluno:". E eu vou implementar a "struct Pessoa", ou seja, um aluno tem um nome, tem um sobrenome. Eu tento fazer isso, o computador vai me apresentar um erro: ele fala que "Pessoa", que é o que estamos tentando fazer, não é um protocolo. Não é um protocolo.

[07:05] E se eu mudar isso aqui para classe? "class". Se eu tentar implementar uma classe, ele vai me pedir os métodos construtores. Deixa alterar aqui para ficar dessa forma e tentar rodar. Eu tento rodar novamente, ele fala aqui "Pessoa" não é um protocolo, ou seja, eu não consigo herdar ou trabalhar com herança quando eu estou utilizando uma struct. Vou dar um "Command + Z".

[00:07:34] "Command + Z", voltei. O que eu consigo fazer então? Eu consigo implementar um protocolo, que é parecido com o que nós estamos fazendo aqui. Essa "struct ContentView" implementa o protocolo "View", que tem uma variável chamada "body", que é isso que nós vamos testar agora. Então vou pegar aqui uma nova struct, então vou fazer o seguinte: eu vou criar aqui um protocolo.

[08:06] "protocol", chamado "View" e esse protocolo, ele vai ter uma variável chamado "body", para simularmos o que está acontecendo aqui, para simularmos aqui. Então esse protocolo vai ter uma variável chamada "body" e essa variável pode ser do tipo View e ela é "{get}" only. Beleza, quando eu tenho um protocolo assim, eu consigo utilizar em uma struct. Então "struct", vou chamar de "ContentView", que é o mesmo nome que temos aqui.

[08:42] "struct ContentView", eu vou implementar ": View", que é esse protocolo aqui de cima. Vamos ver se ele permite fazer isso? Clico aqui, ele fala que eu posso implementar a variável "body", que é exatamente esse caso que nós temos aqui, essa variável. Por isso que temos que entender muito bem a diferença de classe e a diferença de struct.

[09:09] Classe podemos trabalhar com herança, podemos implementar protocolo, podemos implementar métodos, variáveis, ela trabalha com Reference Type. Tudo isso é muito importante você saber, até a teoria, porque se você for disputar uma vaga, provavelmente essa é uma questão que sempre eles te perguntam: diferença de struct e class, e várias outras coisas que vamos ver durante o curso,

[09:34] Então, resumindo: structs nós conseguimos trabalhar com implementação de protocolo, mas não como herança. Essa é uma diferença muito grande entre struct e class. Segunda coisa: struct, nós trabalhamos com Value Type e não com Reference Type, isso também é muito importante saber. Você vai me perguntar: "Mas qual é a melhor opção? É utilizar classe ou utilizar struct?".

[10:06] Você vai ver muito, ao longo do curso, struct e tem até alguns estudos na internet que mostra que temos alguns ganhos de performance quando trabalhamos com struct, porque struct é mais simples. Classes, elas são mais poderosas, então, por exemplo, se você quiser herdar ou implementar algumas coisas de UIKit, como por exemplo a classe NSObject e tudo mais, você vai precisar utilizar classe, você não consegue fazer isso com struct.

[10:37] Então não tem muito bem certo e errado, os dois estão aí para serem utilizados, mas é importante você saber as diferenças, porque se você for mexer em um código de uma outra pessoa, ou até mesmo na hora de criar uma nova estrutura ou uma nova classe, você já vai saber as diferenças. Por último, eu queria falar rapidamente sobre variáveis computadas, que é isso que estamos vendo aqui, que funcionam da seguinte maneira - deixa eu voltar aqui no Playground, eu vou apagar aqui.

[11:12] Na verdade eu vou deixar assim mesmo. Eu vou criar aqui uma nova variável, chamada "nomeCompleto" que vai ser uma variável computada. O que é uma variável computada? É uma variável que pode fazer algum tipo de lógica antes de devolver o seu valor. Então, por exemplo, eu tenho aqui uma variável chamada "nomeCompleto", que é do tipo "String", ou seja, o que eu colocar aqui dentro tem que ser do tipo string, que é o que eu vou devolver para ela.

[11:39] Vou dar um "return" de alguma coisa do tipo string. Nesse caso, o que eu vou retornar? Eu vou retornar o "(nome)" seguido do "(sobrenome)". É isso que eu vou fazer, eu estou juntando o nome com o sobrenome. Isso aqui se chama variável computada. Vamos ver se funciona? "print(aluno.nomeCompleto)". Vamos ver a última coisa que ele vai imprimir. Ele imprimiu então aqui: Felipe Silva, que é o valor desta variável computada.

[12:26] Então quando trabalhamos com esse tipo de variável, uma dica é ver qual é o tipo dela, que é o que você vai ter que retornar aqui dentro. Se você for analisar esse código aqui, que é o do nosso projeto de verdade, aqui é uma variável computada que precisamos retornar uma View", então tudo que nós colocarmos dentro dessa variável "body", que é do tipo "View", tem que retorna uma "View", que é exatamente esse texto que nós estamos vendo.

[12:55] Então achei muito importante fazermos uma pausa, verificarmos nessas coisinhas estranhas que não conhecíamos muito bem - no caso struct e também variável computada - para seguirmos a partir do próximo vídeo com o nosso projeto. E, à medida que formos avançando, vamos aperfeiçoando todos esses conceitos que nós vimos nesse vídeo. Então eu te espero no próximo vídeo.

@@06
De UIKit para SwiftUI

[00:00] No vídeo anterior nós fizemos então uma rápida revisão, falando um pouquinho sobre essa palavra chave, essa keyword struct, em comparação com classes. Vimos que classes trabalham com tipo Reference Type e struct é com Value Type. Falamos também um pouquinho sobre variáveis computadas e isso foi necessário para que quando você bata o olho nessa estrutura inicial, que é gerada pelo próprio Xcode, quando nós trabalhamos com o SwiftUI, você consiga entender o que está acontecendo.
[00:33] Então aqui nós temos uma "struct" chamada "ContentView", que nada mais é do que o próprio nome do arquivo, que está aqui do lado esquerdo, e ele implementa um protocolo, vimos que struct pode implementar um protocolo, chamado "View". Então vou entrar na documentação dessa view para analisar, vou segurar a tecla "Command", vou clicar e vou escolher a opção Jump to Definition.

[01:01] Repara que ele é um protocolo público, chamado "View", e ele tem um tipo associado chamado "body", que é também do tipo "View". Então se nós voltarmos nessa estrutura, nós temos aqui uma variável chamada "body", que é do tipo "View". E tudo que colocarmos dentro dessa variável computada, vamos utilizar para criar o nosso layout. Então você pode perceber que ele já vem com esse texto chamado "Hello, World" e isso então é a estrutura inicial que nós temos quando nós criamos o projeto do zero com o SwiftUI.

[01:40] Agora nós vamos falar um pouco sobre as principais dúvidas que os alunos têm quando começam a estudar um pouquinho de SwiftUI, como por exemplo: onde está o Storyboard? Ou onde está o ViewController? Que são arquivos amplamente utilizados quando nós trabalhamos com o UIKit. Nós vamos ver e entender se nós vamos utilizar também esses arquivos aqui.

[02:04] A resposta sobre Storyboard é que tirando esse arquivo "LaunchScreen.storyboard", que já vem também por default no projeto, que é utilizado para mostrar aquela telinha inicial que geralmente tem um logo no aplicativo ou o nome da empresa. Tirando esse arquivo, nós não temos mais nenhum arquivo ".storyboard" e também nós não temos os arquivos do tipo ViewController. Quando nós estamos trabalhando, por exemplo, com o UIKit, eles são amplamente utilizados.

[02:34] Então nós vamos ver, na verdade, a importância do ViewController em projeto com UIKit, aí vamos entender porque não temos nesse caso com o SwiftUI. Eu estou aqui com um projeto, criado utilizando o UIKIT, então aqui nós temos o bom e "Main.storyboard" e acima nós temos então um arquivo chamado "ViewController.swift", que também nós já conhecemos. Quando nós estamos trabalhando com o Storyboard, por exemplo, eu vou colocar mais um elemento dentro do Storyboard, dentro do nossa tela.

[03:11] Vou clicar aqui no Library e vou puxar uma nova label. Vou clicar e arrastar aqui para dentro do ViewController. Quando nós fazemos isso com qualquer elemento gráfico, inconscientemente é gerado um XML. Então se eu clicar aqui com o botão direito em cima do nome do “Main.storyboard" e clicar em Open As, Source Code, ele gera um arquivo XML contendo todos os elementos gráficos que nós colocamos no ViewController através do Storyboard.

[03:48] Então a label que nós acabamos de colocar, por exemplo, é toda essa tag aqui. Repara que tem várias propriedades, como por exemplo posicionamento, alinhamento, o tamanho, as coordenadas X e Y. Então sem nós percebermos, todos os elementos que nós criamos através do Interface Builder, que é o Storyboard, ele gera aquela view, aquele código XML, que é de difícil compreensão.

[04:16] Não é fácil batermos o olho nesse arquivo e entendermos exatamente o que ele está montando, diferente de quando nós estamos trabalhando com o SwiftUI. Eu vou colocar aqui, por exemplo, mais uma label, que aqui na verdade chamamos de "Text", então vou colocar aqui mas um "Text". Clico, vou puxar ele aqui abaixo desse "Hello, Word!", e quando eu solto, ele cria exatamente o nome do objeto que nós colocamos na tela. Então é um "Text".

[04:50] Repara então que é bem diferente de você entender todo esse código e entender o próprio objeto que nos colocamos dentro aqui da nossa tela, da nossa "View". Como nós temos esse arquivo XML, que é bem maluco e de difícil compreensão, é necessário termos um terceiro arquivo para controlarmos os elementos de dentro do Storyboard. Então olha só: temos aqui a label que nós criamos, se nós precisarmos manipular essa label dentro do nosso arquivo, nós criamos então os outlets.

[05:28] Então eu vou clicar aqui, segurar o "Ctrl", puxar para dentro do meu ViewController, aí eu posso chamar de "labelText", por exemplo. Essa é a importância do ViewController, é um controlador de "View" dos elementos que nós arrastamos aqui para dentro do nosso Storyboard. Quando nós estamos trabalhando com o SwiftUI, não é necessário, porque a própria view gera um código super legível para que nós consigamos identificar os elementos e também manipular da forma que quisermos.

[06:07] Então, resumindo, quando nós estamos trabalhando com o UIKit, nós temos o Storyboard ou o Chib, e ele gera um arquivo XML e eu preciso de um terceiro arquivo, que é o ViewController, que ele vai me ajudar a manipular todos os elementos que nós colocamos aqui no Storyboard. Quando nós estamos trabalhando com o SwiftUI, nós temos os arquivos do tipo "View" e eles próprios geram arquivos legíveis para que nós possamos manipular então todos os elementos.

[06:46] Não significa que não vai ter arquivo ViewController ou nós não vamos utilizar o UIKit de jeito nenhum quando nós quando nós estamos trabalhando com SwiftUI. Não é isso. Nós podemos utilizar os dois frameworks, nós vamos ver isso mais adiante no curso, mas a explicação inicial sobre o Storyboard e o ViewController é exatamente isso.

[07:12] Você vai perceber, ao decorrer do curso, que o SwiftUI é bem mais limpo na parte de construção de layout do que o próprio Storyboard. Então no próximo vídeo, vamos começar, de fato, a colocar a mão na massa e desenvolver então - e dar, na verdade, os primeiros passos na construção do layout do nosso app Alura Viagens. Então vejo vocês no próximo vídeo.

@@07
Estrutura inicial da View

Quando criamos um novo projeto em SwiftUI, por padrão a view é criada com o seguinte código:
import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}COPIAR CÓDIGO
Com base no que aprendemos na aula, marque a alternativa correta que explica o que esse código faz.

A struct ContentView: View implementa o protocolo View que por sua vez nos obriga a implementar a variável computada Body. Dentro do Body podemos desenhar a View.
struct ContentView_Previews: PreviewProvider é uma estrutura obrigatória que devemos implementar. Ela nos fornece o recurso de pré-visualização.
 
Alternativa correta
A struct ContentView: View implementa o protocolo View, que nos obriga a implementar a variável computada Body. Dentro do Body podemos desenhar a View.
struct ContentView_Previews: PreviewProvider, é a estrutura que nos fornece o recurso de pré-visualização da View que está sendo desenhada.
 
Correto! A primeira struct implementa o protocolo View que nos fornece a variável computada body. Dentro dessa variável, desenhamos os elementos da tela. A segunda struct implementa o protocolo PreviewProvider, que nos fornece o recurso da pré-visualização.
Alternativa correta
A struct ContentView: View implementa o protocolo View, que para estar em conformidade utiliza a variável computada body. A implementação dessa estrutura é opcional, já que temos o recurso de preview, para ver a view que está sendo construída em tempo real.

@@08
Consolidando conhecimento

Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Caso já tenha feito, excelente. Se ainda não, é importante que você implemente o que foi visto no vídeo para poder continuar com o próximo capítulo que tem como pré-requisito todo código aqui escrito. Se por acaso você já domina esta parte, em cada capítulo você terá a opção de baixar o projeto feito até aquele ponto. Você encontrará o link para download na próxima explicação do capítulo.

Opinião do instrutor

O gabarito deste exercício é o passo a passo demonstrado no vídeo. Tenha certeza de que tudo está certo antes de continuar. Ficou com dúvida? Recorra ao nosso fórum, não perca tempo! :)

@@09
Download do projeto

Dica: Clicando no link a seguir, você consegue fazer o download do projeto.

https://github.com/alura-cursos/alura-viagens-swiftui/archive/bcbe6ce1cb132564a119eeb03ba0672b1016f795.zip

@@10
O que aprendemos?

Nesse capítulo, aprendemos:
a criar um novo projeto utilizando SwiftUI;
as principais diferenças entre class e struct;
a utilizar a pré-visualização para nos ajudar na construção da View.


#### 04/08/2023

@02-Elementos de interface em SwiftUI

@@01
Iniciando a interface do usuário com SwiftUI

[00:00] De volta com o nosso curso, no capítulo anterior nós criamos o projeto chamado Alura Viagens. Primeiro nós visualizamos a estrutura inicial, que é gerada pelo Xcode quando nós criamos o projeto com o SwiftUI e em seguida fizemos uma comparação das impressões iniciais que tivemos em relação ao UIKit e ao SwiftUI. Chegou o momento de nós iniciarmos a criação da interface do nosso aplicativo.
[00:28] Se você já trabalha em uma empresa de desenvolvimento de apps, provavelmente conhece uma plataforma chamada Zeplin. Nessa plataforma, o pessoal IUX e design sobem os arquivos onde nos fornece então o tamanho, as imagens e as cores que nós, desenvolvedores e desenvolvedores, vamos precisar para criar de fato o layout do aplicativo.

[00:55] Nesse caso, eu tenho o projeto aqui rodando no simulador e eu vou passando para vocês, à medida que nós formos avançando com o nosso curso, as cores, o tipo de fonte, os botões e as imagens e tudo que for necessário. Legal, vamos começar então analisando esse layout, onde nós temos aqui o header do nosso aplicativo, que é essa partezinha roxa, com algumas labels, que aqui em SwiftUI nós chamamos de "Text".

[01:27] Teste temos aqui também dois botões e uma lista. Então essa é a estrutura inicial: basicamente o header do aplicativo e a lista. Então vamos começar nesse vídeo esboçando essa estrutura. Então vamos lá. Se formos analisar aqui em cima, a parte superior, onde nós temos o header, nós temos aqui um "Text" chamado alura viagens, outro "Text" chamado Especial e outro "Text" chamado Brasil, que é uma mensagem que fica aqui no header.

[02:05] Então vamos começar a montar essa estrutura. Vou voltar aqui para o nosso projeto, eu vou apagar essa estrutura inicial que nós criamos no capítulo anterior e nós temos aqui então o "body" vazio. Repare que quando nós apagamos o conteúdo do "body", o compilador nos aponta erros aqui. Então ele fala que a propriedade declarada retorna um tipo, mas não tem inicializadores de expressão.

[02:38] Na verdade, esse erro ocorre porque nós precisamos retornar nessa variável computada, chamada "body", alguma coisa do tipo "View", para que ele consiga montar o layout. Se nós deixarmos aqui vazio, vazio não é do tipo "View", então nós precisamos colocar alguma coisa aqui dentro para que ele consiga entender e compilar o nosso projeto.

[03:04] Legal. Se eu colocar aqui um texto, ele já para de apontar erro, porque nós já estamos retornando um tipo que implementa, na verdade, a "View". Legal, a primeira coisa que nós vamos fazer então é copiar o título do aplicativo, alura viagens. Eu vou colocar aqui então esse mesmo texto "("alura viagens")". Em seguida, nós temos aqui um texto escrito especial e um texto escrito Brasil.

[03:47] Então vamos lá: texto escrito "("ESPECIAL")" e o terceiro texto, escrito "("BRASIL")". Vou deixar esse especial aqui maiúsculo também. Bacana, repare que ele continua apontando um erro aqui e isso é muito importante, que precisamos entender como é montado o layout SwiftUI. Colocamos aqui três textos, um embaixo do outro. Só que não é dessa forma que ele trabalha, na verdade nós temos aqui alguns componentes que nós precisamos utilizar para montar esses layouts.

[04:39] Então, nesse caso aqui, nós queremos empilhar os textos e nós temos um componente próprio, que se chama "VStack" ou Vertical StackView, que ele serve justamente para empilharmos um elemento embaixo do outro. Se você já acompanhou os cursos de IOS, aqui onde criamos layouts com o UIKit, na segunda parte do curso nós falamos um pouco sobre StackView, então é o mesmo conceito aqui no SwiftUI. E se você for tirar a prova disso, eu posso fazer isso aqui através do Library.

[05:22] Eu vou pesquisar aqui por texto, que é a mesma coisa que nós acabamos de fazer ali no código, vou clicar e arrastar aqui para dentro, coloquei um texto. Uma dica, antes de continuarmos, se você estiver modificando o "body" e não estiver refletindo aqui do lado, do preview, da pré-visualização, ou você clica em Resume ou você clica nesse botãozinho aqui, Try Again, que ele vai tentar observar novamente todas as alterações que nós estamos fazendo aqui do lado do código.

[05:56] Não repare, que agora ele já refletiu. Então sempre que você estiver mexendo aqui no código e não estiver refletindo aqui, você precisa clicar novamente no botãozinho Try Again ou Resume, que aparece aqui no lado superior direito do preview. Bom, continuando, nós estávamos falando sobre o empilhamento dos elementos. Coloquei um texto. Se eu tentar colocar outro texto aqui através da biblioteca - vou procurar aqui por text, vou clicar e vou arrastar e para cá.

[06:32] Repara que ele fica com esse tracinho azul embaixo desse texto, Placeholder, e eu vou soltar então mais um elemento aqui. Legal, repara que aqui do lado, da pré-visualização, onde eu estou passando o cursor do mouse, ele ficou empilhado um embaixo do outro. Só que para que isso aconteça, ele criou aqui automaticamente um vertical stack, ou seja, um "VStack". Resumindo: todas as vezes que nós precisamos empilhar os elementos, nós vamos utilizar algum objeto dessa família stack.

[07:10] Nós temos basicamente três tipos: nós temos o VStack, nós temos também o Horizontal Stack e nós temos o ZStack. Qual a diferença deles? Nós vamos estudar agora. Olha só: quando utilizo aqui o VStack, eu empilho um elemento embaixo do outro, igual nós estamos vendo aqui no preview. Se eu quiser colocar uma label, ou seja, um texto ao lado do outro, eu utilizo o Horizontal Stack, então eu vou mudar aqui o V para o H.

[08:02] Repara aqui, essa seção aqui do preview, ele não alterou automaticamente. Então eu vou clicar nesse botãozinho aqui, Resume, onde eu estou passando o cursor do mouse, ele vai atualizar e vai modificar de acordo com as alterações aqui do código. Quando eu alterei aqui para Horizontal Stack, ele deixou os textos um ao lado do outro. E nós temos o terceiro tipo de empilhamento, que é ZStack, onde nós conseguimos colocar um elemento sobre o outro.

[08:39] Isso é bastante utilizado no caso de imagens, por exemplo. onde eu posso colocar aqui uma imagem, vou colocar aqui um "Image". Eu já tenho aqui uma imagem no projeto, eu vou deixar para vocês fazerem o download na seção de exercícios na plataforma da Alura. Como eu já tenho aqui uma imagem, eu vou colocar aqui o nome dela e eu tenho um texto, escrito Placeholder, que é aonde eu estou passando aqui o cursor do mouse.

[09:12] É bastante utilizado no caso de imagens, porque eu posso colocar uma imagem e colocar uma label, ou seja, um texto aqui de rodapé e tudo mais. E serve também para ilustrar, de exemplo, o uso do ZStack. Então, basicamente, nós estudamos o Vertical Stack, um elemento empilhado abaixo do outro, Horizontal Stack, um elemento empilhado ao lado do outro e o ZStack, um elemento sobre o outro. Então nós temos esses três tipos de empilhamento.

[09:45] SwiftUI trabalha bastante com esse conceito de StackView e é importante que você saiba esse conceito, porque nós vamos utilizar bastante durante o curso. Agora que nós já entendemos que para empilhar um elemento nós precisamos utilizar um StackView, eu vou começar aqui colocando um StackView, um Texto chamado "("alura viagens")", um outro Texto chamado "("ESPECIAL")" e um outro texto, chamado "("BRASIL")".

[10:26] Vou pedir para ele fazer o reload aqui do preview, vou clicar em Resume. Bacana, então nós temos aqui o empilhamento dessas labels. Repara que aqui, no simulador, temos a label "alura viagens" centralizado e a label "ESPECIAL" e "BRASIL" alinhada à esquerda. Mas não se preocupe, nesse momento importante criarmos o esboço do nosso aplicativo e nos próximos vídeos nós vamos ter aulas específicas sobre a estilização desses elementos.

[11:02] Bacana, então nós já criamos as três labels, ou seja, os três textos iniciais. Agora nós vamos criar então o esboço também da lista. Então aqui nós temos uma lista com várias viagens e aqui vamos vai criar também uma lista, com o título das viagens. Então quando eu quero criar uma lista, eu tenho também um componente de interface de SwiftUI pronto para isso, que se chama lista, em inglês chamamos de "List".

[11:40] Quando eu crio uma lista, eu posso inicializar ela passando alguns objetos dentro, que é o próprio título das viagens. Então eu vou copiar aqui: "("Rio de Janeiro")", vou colocar aqui um texto também com o título "("Ceará")", o próximo "("Atibaia")", cidade do interior de São Paulo, e eu vou colocar aqui "("Rio de Janeiro")". Bacana, isso é muito interessante, quando criamos uma lista, porque se você já está acostumado a trabalhar com UIKit, você lembra da complexidade que é para criar uma lista simples.

[12:29] Nós precisamos, no ViewController, setar o protocolo de UITableViewDataSource, onde nós precisamos de implementar alguns métodos obrigatórios como, por exemplo, o "numberOfRowsInSection", que é o número de linhas que a tabela vai ter. E também o método "cellForRowAt indexPath", onde nós devolvemos um UITableViewCell, que nesse caso seria o título das viagem.

[12:57] Então com o UIKit é uma estrutura bem mais complexa e com o SwiftUI, apenas com algumas linhas nós conseguimos criar uma lista simples. Por enquanto ela está aqui fixa, com os valores fixos. Nos Capítulos mais adiante, vamos trocar essa lista fixa por uma lista dinâmica, mas a ideia desse vídeo é justamente nós esboçarmos o header do nosso app, que é essa parte onde eu estou passando aqui o cursor do mouse.

[13:29] E também criarmos uma lista simples, que representa essa lista bonitona, que nós vamos criar nos próximos vídeos. Bacana, essa era a ideia. No próximo vídeo então nós vamos continuar mexendo na estilização do header e dos outros componentes. Nos vemos então no próximo vídeo.

@@02
Empilhando elementos

Nesse capítulo, começamos a dar os primeiros passos na construção de layouts utilizando o framework SwiftUI. Um dos pontos mais importantes dessa aula é entender como funciona o empilhamento de elementos dentro da View. Analise as alternativas e escolha a correta, que explica a definição de VStack, HStack e ZStack.

VStack empilha os elementos lado a lado. HStack empilha os elementos um embaixo do outro. E o ZStack empilha elementos um sobre o outro.
 
Alternativa correta
VStack empilha elementos um sobre o outro. HStack empilha elementos lado a lado. E o ZStack empilha elementos um embaixo do outro.
 
Alternativa correta
VStack empilha elementos um embaixo do outro. HStack empilha elementos lado a lado. E o ZStack empilha elementos um sobre o outro.
 
Correto! Todos os StackViews são utilizados para empilhar os elementos na View.
Alternativa correta
VStack empilha elementos um embaixo do outro. HStack deixa o elemento neutro na tela, podendo arrastar para onde quiser. E o ZStack empilha elementos um sobre o outro.

@@03
Estilizando o header do aplicativo

[00:00] Acabamos de montar a estrutura do header do aplicativo, começamos criando algumas labels correspondente ao header e em seguida montamos uma lista simples, contendo o nome de alguns destinos brasileiros. Dando continuidade, agora chegou a hora de estilizar o header do aplicativo. Então eu estou aqui com o simulador aberto, nós temos aqui, como você pode ver, o título com uma fonte diferente, aqui também a cor de fundo do header e a ideia desse vídeo é começarmos a mexer nessas propriedades.
[00:35] Então vamos lá. Aqui nós temos algumas variações de formas que nós podemos fazer isso. Então vamos começar mudando a cor de fundo do header para roxo, para isso vamos utilizar um recurso chamado SwiftUI Inspector. Então nós vamos manter a tecla "Command" pressionada e vamos clicar em cima do StackView que empilha esses elementos. Então olha só o que eu vou fazer: eu vou segurar o "Command", vou clicar no StackView e vou selecionar essa opção Show SwiftUI Inspector.

[01:10] Bacana, quando eu clico nela, por default, ele abre essa caixa de diálogo com algumas opções e o que nós precisamos nesse momento é alterar a cor de fundo. Como você pode ver, não temos aqui a opção background nem nada parecido, mas nós temos essa opção de adicionar um modificador. Eu vou clicar nessa opção e quando eu clico aqui, ele dá várias outras opções de customização, entre elas a opção Background.

[01:42] Então eu vou clicar aqui, repara no preview que ele já alterou a cor aqui para azul, que é uma cor default que ele já traz aqui para nós. Mas eu posso clicar nessa caixinha de diálogo e escolher alguma outra cor padrão, que já vem aqui para nós utilizarmos. Eu vou escolher a cor roxa, a purple. Quando eu clico aqui, ele já altera então com a cor selecionada. Então repara que nós já conseguimos na pintar o header do nosso app através da opção SwiftUI Inspector.

[02:16] Agora nós vamos seguir alterando os tipos de fontes que nós vamos trabalhar. Então vamos começar mudando a cor da fonte. Como podemos mudar a cor da fonte? Eu posso vir aqui, clicar SwiftUI Inspector. Ele vai trazer aqui algumas coisas, já por default, entre elas eu tenho essa caixinha aqui chamada Font, onde eu tenho aqui algumas opções e eu vou alterar então a opção Color.

[02:49] Vou selecionar opção White, que eu vou escolher a cor branca, repara que quando eu escolho, ele gera esse código, que é esse ".foregroundColor" e ele seta a cor, que é "(Color.White)". Repara que aqui a sintaxe ficou muito mais reduzida e intuitiva. Quando nós trabalhávamos com UIKit, nós tínhamos que colocar UIColor e, em seguida, .white, algo do tipo. Aqui nós digitamos color direto.

[03:22] Então aqui na pré-visualização nós já temos a label alura viagens com a nova cor, que é a cor branca. Agora nós vamos alterar a cor então - na verdade nós vamos alterar na fonte dessa label, desse texto alura viagens. Além do SwiftUI Inspector, que é esse ajudante que nos informa as opções disponíveis para customizar tanto texto quantos StackView ou outros elementos de UI, nós podemos fazer isso também por código.

[03:56] Repara que quando nós clicamos em alguma opção do SwiftUI Inspector, ele gera automaticamente esse código. Se nós já soubermos a sintaxe, nós podemos fazer isso direto. Um exemplo disso é a mudança de fonte, então eu vou fazer exatamente isso, eu vou fazer direto no código. Então eu vou apertar o ".", vou digitar "font". Como eu vou escolher uma fonte customizada, eu vou apertar ".custom" e em seguida o nome da fonte.

[04:27] A fonte que eu vou escolher vai ser a fonte "("Avenir Black")" e o tamanho da fonte vai ser o tamanho "20)". Repara que ele já alterou aqui na pré-visualização o tamanho e também o tipo da fonte. Agora nós vamos prosseguir fazendo a mesma coisa nas labels abaixo, nos textos abaixo. Então mesmo esquema: vou dar um "Enter", vou mudar cor. Para mudar a cor é o ".foreground", então ".foregroundColor:(Color.White)".

[05:06] E para altera o tipo de fonte, ".font", onde eu passo aqui uma fonte customizada, então eu escolho "(.custom" e em seguida eu vou colocar o nome da fonte. Repara que essa label especial, eu estou aqui com o simulador aberto, ela é uma label, ou seja, um texto, um "Text", com uma fonte um pouquinho mais fina em relação às outras: aluna viagens, especial e Brasil. Alura viagens e Brasil é parecido, agora a label especial é um pouquinho diferente.

[05:41] Então nós vamos alterar esse tipo de fonte. Eu vou escolher aqui "Avenir", na verdade, "Avenir Book" e o tamanho vai ser ": 20". Repara que ficou uma fonte mais fininha, igual nós temos aqui no exemplo. Vamos para o último texto, vou alterar o fundo - na verdade a cor do texto. Uma coisa importante é o seguinte, que muita gente confunde, por exemplo, quando eu vou alterar a cor do texto, eu posso vir, segurar a tecla "Command", clicar em cima do texto, SwiftUI Inspector.

[06:30] Eu posso selecionar aqui, se eu me confundir, que é muito comum esse erro, eu posso vir aqui em adicionar modificador e escolher a opção Background, que está aqui. Quando eu faço isso, repara que eu altero a cor do frame da label, do espaço que ela ocupa na tela, no caso aqui azul. Então quando eu escolho a opção Background, que nós estamos acostumados para mudar o fundo e tudo mais, nós alteramos o espaço que a label ocupa, a cor do espaço que a label ocupa, não necessariamente a cor do texto.

[07:09] Então é bem diferente ".foreground" quando eu quero alterar cor do texto, da escrita, e o ".background" quando eu quero alterar a cor do espaço que a label ocupa. Utilizei isso só como exemplo para você ter atenção e agora nós vamos utilizar novamente o ".foregroundColor(Color.White)" e também vamos mudar a fonte. Uma fonte customizada, "("Avenir Black")" e o tamanho vai ser ": 23". Bacana, então já alteramos a cor e a fonte e também o tamanho desses três textos que nós colocamos.

[07:59] Agora o próximo passo é nós alinharmos os textos à esquerda, que é o que nós vamos fazer agora. Quando nós quereremos modificar a posição dos elementos e o alinhamento, nós podemos utilizar uma propriedade que é a Frame. Então eu vou alterar o alinhamento do texto Especial, então eu vou clicar aqui no final, ".frame" - repara que aqui ele tem vários inicializadores, nesse momento vou escolher esse, onde eu passo um tamanho mínimo, um tamanho máximo e o alinhamento.

[08:41] Repara que ele tem várias opções, começando aqui pela largura mínima. A largura mínima então nós vamos colocar aqui "0", largura ideal, repara que ela é opcional, tem um pontinho de interrogação, então eu não preciso necessariamente passar essa informação. Como eu não preciso, eu não vou utiliza-la, então eu vou apagar esse parâmetro. Aqui eu preciso passar a largura máxima. Por que eu preciso passar a largura máxima?

[09:14] Porque a label Especial, ela vai ocupar todo esse espaço onde eu estou passando o cursor do mouse, desde o lado esquerdo até o lado direito. Dessa forma eu consigo centralizar, ou seja, alinhar a label para qualquer um dos lados. Então eu vou alinhar ela para esquerda em relação ao tamanho total do header. Então a largura total, eu quero que ele fique à esquerda.

[09:40] Por isso, eu vou passar o tamanho máximo que ele conseguir, ".infinity". Esse próximo parâmetro eu também não vou utilizar e eu vou utilizar somente o alinhamento. O alinhamento é o seguinte: eu tenho duas opções ".leading", que é o alinhamento à esquerda, como vocês podem ver aqui, onde eu estou passando o cursor do mouse. Eu posso passar também o alinhamento ao centro, ".center" e eu posso passar o alinhamento à direita, que é o ".trailing".

[10:16] Olha só, por isso que foi importante eu passar aqui a largura máxima como ."infinity", porque ele vai tentar pegar todo o tamanho da "View", que é onde está essa linha azul, aqui onde eu estou passando o cursor do mouse, ".infinity" ele pega toda essa largura. E como eu tenho toda a largura do device, eu consigo alinhar onde eu quiser: à direita, que é ".trailing", ao centro, que é ".center" ou à esquerda, que é ".leading".

[10:47] Então eu vou voltar aqui para o tipo de alinhamento ".leading". Vou fazer a mesma coisa com o texto Brasil, então ".frame", vou escolher esse inicializador, largura mínima ": 0", largura ideal eu não preciso, largura máxima ".infinity", para ele ocupar toda a largura que o device permitir. Esses dois parâmetros, a seguir, também não vamos utilizar, eu vou utilizar somente o alinhamento. A mesma coisa, eu vou alinhar ele à esquerda, ou seja, ",leading".

[11:35] Bacana, já estamos chegando em um resultado similar ao que nós precisamos. Agora o que precisamos fazer é mexer no espaçamento entre a label e a parte esquerda do aplicativo. Como você pode ver, aqui temos a label Especial com uma borda, ou seja, com um padding, um valor que deixa um espacinho entre a margem esquerda e o texto. Nós vamos utilizar então o ".padding", que é justamente isso.

[12:10] Ele nos ajuda a colocar uma borda entre a distância do conteúdo e o elemento, então nós vamos utilizar um ".padding". Só que se eu deixar o ".padding" dessa, sem especificar em qual alinhamento eu quero deixar no seu valor, ele pega todo os espaços, ou seja, ele pega aqui à esquerda, ele pega acima, ele pega abaixo e ele pega também à direita. Quando eu deixo o ".padding" sem especificar, ele utiliza um valor padrão para todos os lados: à esquerda, acima e abaixo.

[12:53] Como eu quero colocar um alinhamento somente à esquerda, eu vou utilizar o ".padding(.leading, )" o valor que eu quero, que é ", 30". Repara que agora ele só colocou o espaçamento, que é na verdade a distância entre o conteúdo dos elementos e a sua borda à esquerda, que foi aonde eu especifiquei aqui. Então eu coloquei um ".padding", à esquerda, com o valor ", 30)" para ele deixar esse espaço.

[13:27] Nós vamos fazer a mesma coisa com o texto Brasil: ".padding", repara que se eu deixar assim ele vai deixar novamente um valor, que é o espaço entre o seu conteúdo e a borda, para todos os lados, porque eu não especifiquei qual é a margem que eu quero colocar esse espaçamento. Nesse caso, eu preciso colocar só esquerdo novamente, então ".leading, " o valor, que é ", 30)".

[14:01] Beleza. Repara que agora nós temos um espaçamento nas duas labels, ou seja, nos dois textos que nós precisamos. Para finalizar, vamos pedir para o Swift ignorar a área que chamamos de SafeArea, que é esse espacinho branco aqui, para que consigamos então pintar o header conforme o que precisamos aqui no simulador. Para isso, nós vamos utilizar um método que se chama ".egdesIgnoringSafeArea".

[14:39] E nós vamos passar aqui "(.all)", ou seja, todo o espaço. Dessa forma, nós conseguimos então customizar - iniciar, na verdade, a estilização do header, mexendo na cor, no espaçamento, no alinhamento e também na fonte. Já ficou um pouquinho melhor, mas nos próximos vídeos, nós vamos terminar então a estilização desses componentes. Até o próximo vídeo.

@@04
Posição e tamanho com Geometry Reader

[00:00] De volta com o nosso projeto, no vídeo anterior nós começamos a mexer um pouquinho no header, onde nós já trocamos a cor de fundo, mexemos nos texts, já alteramos a fonte, mexemos um pouquinho também no posicionamento. Mas ainda está longe da forma que nós deveríamos deixar. Então eu tenho aqui o simulador com o layout pronto, repara que aqui nós temos um header um pouquinho mais alto, a altura dele é maior.
[00:29] O posicionamento do texto, do título do nosso aplicativo em relação ao topo também é diferente. Então ideia nesse vídeo é continuarmos mexendo no header e também no posicionamento do text alura viagens e no vídeo seguinte, vamos mexer então nesses botões aqui: Hotéis e Pacotes. Então vamos continuar. Como nós queremos mexer na altura do header, ou seja, nós precisamos deixar essa View roxa um pouquinho maior - olha só como ela está aqui.

[01:00] Você já deve ter ouvido, se você já programa para iOS, sobre a classe Frame. Ela nos dá acesso à altura e à largura de um elemento de interface do usuário e nós podemos alterar esses valores. Todos os elementos que implementam esse protocolo View, no caso o nosso VStack, eles têm acesso a um método chamado Frame. Vamos conferir? Vou segurar aqui a tecla "Command", vou clicar em "View", vou escolher essa opção aqui: Jump to Definition.

[01:40] Ele vai abrir então a definição do protocolo "View". Se eu procurar aqui por ".frame" ou alguma coisa parecida, ele vai me trazer justamente o método que nós vamos utilizar, que é esse método aqui, um método público, onde nós passamos uma largura, que é opcional - olha o pontinho de interrogação aqui, nós podemos passar ou não. Nós podemos também passar ou não a altura, porque ela também é opcional, e nós precisamos passar o alinhamento.

[02:15] Então são três parâmetros: largura, altura e o alinhamento. Beleza. Isso está no protocolo View. Como o nosso VStack implementa esse protocolo, vou clicar aqui, segurando a tecla "Command" na definição dele e ele implementa esse protocolo, ou seja, nós temos acesso ao método ".frame". E nós vamos utilizá-lo agora. No final do nosso VStack, ele começa aqui e ele fecha aqui embaixo - você vai ver, ao decorrer do curso, que vão ter várias aberturas e fechamentos, e às vezes fica um pouquinho confuso de sabermos onde abre aonde fecha.

[03:00] Então uma forma bacana é: quando você clica na chave de abertura, ele mostra rapidinho aqui qual é a chave de fechamento. Então deixa eu clicar aqui para te mostrar. Eu vou clicar aqui, repara que ele fica amarelinho aqui embaixo. Vou fazer de novo. Cliquei aqui, ele mostrou que a chave de fechamento está aqui embaixo. Então é exatamente aqui que nós vamos mexer no Frame.

[03:28] Vou apertar o "Enter", vou apertar aqui ".frame", ele vai me trazer basicamente dois métodos: um, que é - o primeiro, na verdade, que é esse onde passamos a largura, a altura e o alinhamento, que é o que nós vamos utilizar. E esse aqui debaixo, onde nós passamos uma largura mínima, uma largura ideal e tem vários outros parâmetros, que não é o caso. Então eu vou escolher esse primeiro método, vou dar um "Enter".

[03:56] Na largura do header, ou seja, nessa partezinha roxa aqui que eu estou passando o cursor do mouse, é largura do device. Então se o iPhone for um iPhone menor, vai ser a largura daquele iPhone, se for um iPhone maior, vai ser também a largura total daquele Iphone, se for um iPad, vai ser a largura total do iPad. Ou seja, é a largura da superview, da primeira hierarquia, a View principal.

[04:28] Então como é que nós pegamos o acesso à essa View? Nós precisamos ter acesso à superview nesse caso. Se você já está acostumado com o UIKit, geralmente quando nós estamos trabalhando com a interface do usuário, nós digitando "self." - no caso aqui selfie não, self é a própria View, é o ContentView, ".frame.widht", geralmente era assim que nós fazíamos quando nós estávamos trabalhando com o UIKit. Nós pegamos a View, ".frame.widht" ou ".height", a largura ou a altura.

[05:09] Nesse caso, a View que nós estamos trabalhando, que implementa o protocolo View, ela não tem acesso ao Frame. Quando nós estamos trabalhando então com o SwiftUI, é uma forma um pouquinho diferente. Para que nós consigamos pegar exatamente o Frame, ou seja, a largura, a altura, da View, nós precisamos utilizar um objeto chamado leitor de geometria, em inglês geometry reader.

[05:41] Então nós vamos utilizar esse objeto para que consigamos ter acesso às opções de Frame da View. Então olha só que diferente: eu vou colocar esse objeto aqui em cima, porque queremos englobar todo o VStack que que nós estamos utilizando, que é o próprio header, então "GeometryReader{}", aqui eu coloco um nome qualquer, nesse caso vou colocar "{ view in}" e aqui dentro eu coloco todo o código.

[06:21] Aqui poderia ser qualquer coisa, blábláblá, mas enfim, vou deixar aqui "view", que é mais comum. Dentro dele, eu vou colocar todo o VStack, então ele começa aqui e termina aqui, e tem todos esses métodos configurando ele. Então eu vou pegar ele, recortar e vou colar ele aqui dentro. Com essa View, que o leitor de geometria, que é esse objeto, nos traz, eu faço o seguinte: eu venho aqui, apago esse exemplo que eu utilizei, e vou digitar a "view.size.width". Bacana.

[07:16] Então aqui é a largura total da superview. Vou fechar aqui o menu lateral só para ficar com uma visualização melhor. A altura, que é o que nos interessa nesse caso, eu vou deixar aqui o valor, por enquanto, de ": 180", depois testamos em outros tamanhos de iPhone e iPad, e se for necessário, nós mudamos. E o alinhamento do nosso header. Onde ele vai ficar? No topo, então ".top".

[07:44] Essa é a ideia. Beleza, você vai falar: mas agora olha só o que aconteceu, ele ficou no centro, ficou menor e a TableView também nem está aparecendo completa.". Vamos analisar o que acabamos de fazer. Nós colocamos aqui um valor de 180 para tudo que está dentro do VStack, inclusive a lista. Então repare que a lista está dentro do nosso Vertical Stack e por isso ela também entra nessa regra onde nós citamos um valor de 180.

[08:19] O ideal, para resolver isso, é nós tirarmos essa lista daqui, de dentro do header, e empilharmos ela abaixo. Então só para analisarmos certinho, eu tenho aqui um Vertical StackView, onde eu estou empilhando os elementos de texto, e também tenho uma lista. Nós vamos tirar essa lista daqui - vou tirar essa lista daqui. E eu vou utilizar mais um VStack, que vai ser o elemento que vai empilhar o header e a lista.

[09:00] Então olha só, só para não ficar confuso, eu vou fazer assim: vou colocar aqui um marcador, onde vou anotar que aqui é o "VStack Principal". Então "VStack", onde eu vou colocar a lista e eu vou tirar daqui o VStack que empilha os elementos do header, que eu vou deixar ele aqui. Legal, repara que agora os dois elementos já estão empilhados certinho. E só para você tomar nota, esse VStack aqui debaixo, ele diz respeito somente ao header.

[09:46] Então "VStack Header". Bacana. Então tenho o VStack principal, que empilha o header e a lista, e tenho o VStack só do header, onde eu empilho os elementos de texto. Legal, a primeira parte já estou ok, nós conseguimos então aumentar um pouquinho o tamanho do header e para finalizar esse vídeo, falta nós então colocarmos um espaço entre a borda superior do nosso texto alura viagens em relação ao topo do nosso dispositivo.

[10:26] Então é isso que nós vamos fazer agora. Eu vou começar aqui, mexendo então no padding, que nós inclusive já trabalhamos com ele, nós setamos um padding, por exemplo, aqui para o nosso texto Especial, onde nós pegamos a margem esquerda, que é o "leading", colocamos um valor de ": 30", que é esse espacinho onde eu estou passando aqui o cursor do mouse e também na fonte do texto Brasil.

[11:00] Então nós também colocamos um padding na margem esquerda, onde nós setamos um valor de ": 30". Agora nós vamos fazer a mesma coisa, só que não vai ser na margem esquerda e sim no topo, para a label alura viagens, assim conseguimos aproveitar melhor o espaço aqui do nosso header. Então vamos lá. Aqui embaixo, depois de ".font", eu vou colocar um padding, ".padding". Se seu deixar sem especificar qual lado, ele pega todos os lados.

[11:31] Repara que eu estou passando o cursor do mouse aqui embaixo, onde tem um espacinho default que ele colocou, aqui do lado direito, no lado esquerdo, e acima. A ideia é que nós precisamos colocar apenas acima, então ".top, ", o valor que eu quero de espaçamento, no caso vou deixar aqui ": 50". Bacana. Dessa forma nós centralizamos aqui a label alura viagens, deixamos aqui um pouquinho mais para baixo.

[12:02] E a ideia desse vídeo era justamente essa: aprendermos a utilizar leitor de geometria, que nos dá acesso às opções de altura e largura, que vai ser amplamente utilizado quando nós estamos trabalhando com SwiftUI e também mexer no posicionamento desses elementos. No próximo vídeo então vamos continuar mostrando e implementando a parte dos botões, que é esse Hotéis e Pacotes. Então nos vemos em instantes no próximo vídeo.

@@05
Consolidando seu conhecimento

Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Caso já tenha feito, excelente. Se ainda não, é importante que você implemente o que foi visto no vídeo para poder continuar com o próximo capítulo que tem como pré-requisito todo código aqui escrito. Se por acaso você já domina esta parte, em cada capítulo você terá a opção de baixar o projeto feito até aquele ponto. Você encontrará o link para download na próxima explicação do capítulo.


Opinião do instrutor

O gabarito deste exercício é o passo a passo demonstrado no vídeo. Tenha certeza de que tudo está certo antes de continuar. Ficou com dúvida? Recorra ao nosso fórum, não perca tempo! :)

@@06
Download do projeto

Dica: Clicando no link a seguir, você consegue fazer o download do projeto.

https://github.com/alura-cursos/alura-viagens-swiftui/archive/764026b00b93421436501b4143fa744f4e2be2b7.zip

@@07
O que aprendemos?

Nesse capítulo, aprendemos a:
utilizar VStack, HStack e ZStack;
implementar elementos como: Text, Button, List e suas propriedades;
criar listas.

#### 07/08/2023

@03-Criando novas Views

@@01
Botões e comportamentos

[00:00] Então nós estamos falando ainda sobre o header do nosso aplicativo, nós acabamos de mexer na altura. Nesse vídeo nós vamos implementar esses dois botões, que nós estamos vendo aqui: Hotéis e Pacotes. Então vamos começar mexendo nisso. Eu vou clicar aqui no Library, que é essa setinha com o mais aqui em cima, no canto superior direito, e vou pesquisar por Button. Button.
[00:28] Aqui tem uma mudança, que geralmente quando nós trabalhamos com o UIKit, nós temos os componentes com o prefixo UI: UILabel, UIButton UISegmentedControl e tudo mais. A sintaxe do SwiftUI é um pouquinho mais limpa, é direto o nome do elemento, então se nós estamos trabalhando com botão, é Button. Eu vou clicar nesse botão e vou arrastar aqui para baixo, depois do VStack onde nós estamos criando o header.

[01:04] Então coloquei aqui um botão e eu vou colocar mais um botão. Vou vir aqui novamente no Library, eu posso clicar aqui e arrastar ele ao lado desse botão, dessa forma aqui, ao lado. Ele já cria então um Horizontal Stack, repara que ele criou aqui para nós um Horizontal Stack. Eu poderia fazer isso também programaticamente, não tem problema nenhum, as duas formas funcionam e ficam exatamente iguais.

[01:37] Então vamos dar uma olhada novamente aqui no simulador. Eu tenho o primeiro botão onde se chama Hotéis e o segundo, Pacotes. Então eu já vou começar alterando o texto desses botões: "("Hotéis")" e aqui embaixo "("Pacotes")". Bacana. Então nós vamos começar a estilizar de fato esse botão. Nós vamos começar então alterando a fonte do botão, na verdade a fonte do texto do botão.

[02:08] Então aqui embaixo de "Text" eu vou vir, vou dar um ".", vou chamar aqui ".font", vai ser uma fonte customizada, então vou apertar aqui ".custom". Eu passo aqui o nome da fonte, como string. A fonte que eu vou utilizar nesse caso é "("Avenir Medium")" e o tamanho é ": 17". Repara que essa forma de nós configurarmos a fonte é um pouco perigosa, porque se nós errarmos aqui a digitação, ele pode não encontrar fonte que nós estamos procurando.

[02:43] Então sempre ficar atento a isso ou criar uma constante no projeto com o nome dessas fontes. Continuando, vamos fazer a mesma coisa aqui embaixo: ".font", vai ser uma fonte customizada, "("Avenir Medium")", e o tamanho vai ser ": 17". Ótimo. Agora nós vamos alterar a cor do texto. A cor do texto, repara que está azul, nós vamos deixar branco, que é exatamente como nós estamos vendo aqui no nosso layout base.

[03:24] Eu vou utilizar agora uma outra forma de customizarmos os elementos, que é o SwiftUI Inspector. Nós vimos isso no primeiro capítulo desse curso e eu vou relembrar aqui com vocês, que é o seguinte: eu posso segurar a tecla "Command" do teclado. Segurando a tecla "Command", eu posso clicar aqui no elemento que eu quero customizar, no caso o texto. Então segurei o "Command", cliquei no texto, ele vai me trazer aqui algumas opções.

[03:51] Eu vou escolher aqui essa opção: Show SwiftUI Inspector. Eu clico nela, ele vai abrir aqui uma caixa de diálogo, com várias opções. O que eu preciso é alterar o tamanho - na verdade, a cor do texto. Quando falamos em cor de texto, temos que tomar um pouquinho de cuidado, que geralmente associamos à background color. E, nesse caso, a cor do texto é Foreground Color.

[04:18] Então nós vamos achar aqui o Foreground Color. Eu tenho aqui essa opção, que é a nós vamos utilizar. Cliquei em Foreground Color, ele vai me trazer, por default, o azul, que é exatamente a cor que ele traz aqui, quando nós criamos um botão. Nós vamos trocar. Ao invés de azul, nós vamos trocar aqui para White, que é branco. Bacana. Então nós fizemos isso utilizando SwiftUI Inspector, agora vamos fazer a mesma coisa, só que programaticamente.

[04:55] Então ."foregroundColor(.white)". Então, como você pode ver, as duas formas funcionam bem e alcançam o mesmo resultado. Agora, nós não estamos conseguindo ver a escrita dos botões, porque a cor de fundo do botão também está branca. Então vamos alterar a cor de fundo do botão. Eu vou fazer isso aqui, dessa vez utilizando o SwiftUI Inspector. Vou clicar aqui em cima do botão, com a tecla "Command" pressionada, SwiftUI Inspector.

[05:34] Não tenho, não estou achando aqui nada sobre Background, então eu venho aqui em adicionar modificador. Clico aqui e procuro por Background, que é essa opção aqui. Ele vai me trazer azul, por padrão. Como esse botão realmente é azul, eu vou manter essa opção. Agora nós vamos fazer a mesma coisa no botão Pacotes, dessa vez eu vou fazer via código. Então ".background(Color.orange)". Beleza.

[06:15] Então nós temos aí os dois botões. Eles não estão com o tamanho ideal, nós já vamos arrumar isso em sequência. Então vamos continuar arrumando o tamanho do botão. Quando nós falamos em altura e largura, nós vimos isso no vídeo anterior, nós estamos falando sobre o Frame, o metodozinho ".frame", que nós vimos no vídeo anterior. Nós queremos deixar aqui com um valor específico a altura e a largura. Então vamos mexer nisso agora.

[06:48] Olha só: ".frame", a largura do botão eu vou deixar aqui com o valor de ": 100" e a altura ": 50". Mais para frente podemos alterar esses valores, à medida que nós formos testando em outros devices. Beleza. Então setei aqui um Frame. Vou fazer aqui a mesma coisa com o próximo botão: ".frame", ": 100" de largura, ": 50" de altura. O alinhamento, como eu não preciso utilizar nesse momento, eu vou apagar esse parâmetro.

[07:35] Repara que eu já tenho aqui um resultado um pouco mais amigável, como o que eu preciso, apesar de não estar igual. Mas já conseguimos então alterar o tamanho dos botões. Agora eu preciso fazer uma alteração que é a seguinte: quando nós estávamos criando o header do app, nós colocamos esse método aqui para ignorar a SafeArea de todos os lados, só que ele está pegando inclusive a parte debaixo do header.

[08:04] Repara que tem uma linha azulzinha aqui, onde ele pega a parte de cima, que ele ignora, que realmente nós precisamos. Só que ele também utiliza essa parte de baixo como uma margem, que é o que eu preciso tirar nesse momento. Eu quero que ele pegue e ignore a SafeArea de toda a View. Então olha só o que eu vou fazer: eu vou comentar essa linha, só para você ver como é que vão ficar esses botões.

[08:32] Comentei o código, os botões, eles ficaram alinhados exatamente com o header, eles ficaram bem embaixo, que é o que nós precisamos para alinhar. Para deixar dessa forma, só que sem perder o método de ignorar a SafeArea, para não ficar branco aqui em cima, eu vou mover ele de lugar, porque ele está no lugar errado. Então eu vou tirar ele daqui, "Command + X" e vou colocar ele aqui, para baixo, dessa forma.

[09:07] Repara que agora nós utilizamos ele da forma correta. Bacana. Então nesse vídeo nós já avançamos, com algumas customizações, alterando a fonte do botão, do texto do botão, também mexemos na cor, no posicionamento, na altura e largura. No próximo vídeo vamos continuar então mexendo no posicionamento e nos espaçamentos entre o botão. Então até o próximo vídeo.

@@02
Criando células customizadas

Transcrição

[00:00] No vídeo anterior, nós estávamos implementando os botões Hotéis e Pacotes. Nós paramos nesse ponto, onde eles ficaram um pouco abaixo do header. Se nós pararmos para analisar aqui o gabarito, ou seja, o simulador com o layout final, nós precisamos alinhar os botões exatamente no meio da linha final aqui do header do aplicativo. Então nós temos aqui a linha final, onde ele pega o meio dos botões.
[00:28] E o que nós temos aqui, na nossa pré-visualização, é que nós alinhamos - na verdade, por default, ele empilhou os botões abaixo do header. Então nós precisamos mexer nesse alinhamento. Se nós pararmos para pensar, não é muito difícil, porque é só subirmos os dois botões à metade da altura deles. Ou seja, eles têm uma altura de 50, se nós subirmos a metade, que é 25, eles ficam alinhados exatamente na metade, pegando aqui a linha final dessa View roxa.

[01:07] Então vamos começar a fazer isso. Nós temos aqui o Horizontal StackView, que empilha um botão ao lado do outro, então se nós mexemos no posicionamento dele, ele vai puxar os dois botões um pouquinho mais para cima. Quando nós precisamos mexer nesse tipo de posicionamento, nós utilizamos um carinha chamado Offset, que ele desloca a View pelas distâncias, pelo posicionamento horizontal ou vertical, de acordo como valor que especificamos.

[01:40] Então olha só que bacana: se eu vier aqui e der um ".offset", eu consigo pegar algum eixo, no caso é o eixo "(y:)" que nós vamos alterar, e eu vou subir a metade da altura desse botão. A altura dele é 50, eu vou subir então no eixo "(y: -25)". E nós conseguimos então alinhar os botões exatamente a metade, igualzinho o que precisamos. Só que ainda falta nós mexemos no espaçamento desses botões.

[02:13] Quando nós queremos dar um espaçamento padrão, para que ele ocupe todo o espaço do StackView, nós temos um objeto chamado "Spacer", que nós vamos utilizar aqui. Ele coloca um espaço entre os elementos. Só que não é exatamente esse espaço que nós queremos colocar. Queremos que ele fique com um espaçamento maior, mas não tanto. Repare que aqui ele ficou nas extremidades da esquerda e da direita.

[02:41] Então vamos mexer nesse deslocamento novamente. Eu tenho aqui os botões Hotéis e Pacotes e vamos mexer no Offset deles. Então, exatamente o que fizemos aqui, nós vamos fazer exatamente para cada botão, só que dessa vez alterando o eixo X. Então vamos lá, aqui embaixo de ".background", eu vou dar um ".offset". Vou mexer no eixo X, então "(x: )". Nesse caso, eu vou colocar aqui um valor, por exemplo, de ": 50".

[03:18] Então ele vai deslocar 50, esse é o valor que eu coloquei. E agora vamos fazer a mesma coisa com botão Pacote. Só que, dessa vez, vamos utilizar o Offset, então ".offset", eixo X, só que agora ao invés de ser 50, é -50, porque eu quero que ele venha um pouquinho mais para a esquerda, exatamente assim. Repara que agora o posicionamento dos botões ficou bacana, ficou amigável.

[03:52] Para finalizar então o nosso header, a única coisa que precisamos é alinhar - na verdade alinhar não, é arredondar esses botões. Então vamos trabalhar nisso agora. Como é que eu faço então para arredondar o canto de um botão? Então vamos pegar, por exemplo, esse botão aqui, o primeiro, que é o azul, que é o botão Hotéis, e vamos utilizar um método que se chama Overlay.

[04:19] Então sempre que nós precisamos arredondar os cantos da borda de uma View, vamos utilizar então um modificador chamado Overlay, que é exatamente assim que funciona: ".overlay". Eu passo aqui então uma View, no caso eu quero que ele fique um retângulo arredondado, então vou utilizar essa estrutura e eu passo aqui então um "(cornerRadius:", ou seja, um raio.

[04:51] Vou colocar aqui, por exemplo, ": 10)". Só que, na verdade, eu quero que ele arredonde também o traço ao redor do botão. Repara que aqui ele ficou desconfigurado, então eu vou utilizar um carinha que se chama Stroke. Esse cara, eu posso fazer o seguinte, eu posso pedir para ele arredondar a borda com uma cor, então passar aqui a cor azul, que é a cor do meu botão, (Color.blue)".

[05:24] E também a largura de uma linha, então vou utilizar aqui o ", lineWidth" - na verdade, é aqui dentro mesmo, ", lineWidth:". Eu vou passar aqui um valor de ": 10", por exemplo. Então ele vai arredondar com uma linha de 10 pontos. Repara que ele ficou exatamente da forma que precisamos. Então sempre que nós quisermos arredondar, utilizamos Overlay, passamos a forma que queremos junto com o raio e também a largura da borda que nós queremos arredondar.

[06:00] Então vamos fazer a mesma coisa com o botão Pacotes. Então, aqui embaixo de ".frame", ".overlay", retângulo arredondado. Vou passar um raio de ": 10" e vou utilizar uma linha, a largura de uma linha, então ".stroke" - qual é a cor da linha que nós temos agora? Nós temos a cor laranja, então "(Color.orange)", seguido da largura da linha, que no nosso caso é ": 10". Olha só que bacana: então ele ficou aqui um botãozinho arredondado, igual o que nós temos aqui no nosso layout, que nós estamos utilizando como base.

[06:49] Eu queria chamar a atenção em dois pontos aqui. Primeiro é o tamanho que esse arquivo está ficando, nós temos aqui um único arquivo, ContentView, que ele já traz por default quando nós criamos o projeto com SwiftUi e nós estamos implementando tudo aqui: o Vertical Stack, o header, a lista. Então ele está ficando um arquivão um pouco já difícil de entender. Um dos próximos assuntos que nós vamos ver é exatamente como é que organizamos isso, para que quebremos em documentos menores e fiquei de mais fácil compreensão.

[07:27] E também vamos continuar implementando a lista, que por enquanto é apenas um Text, uma labelzinha simples que nós estamos exibindo aqui. E nos próximos capítulos, nós vamos aprender então a trabalhar com uma lista um pouquinho mais bonita, igual nós estamos vendo aqui: com título, preço, uma imagem. Então vamos estudar tudo isso nos próximos vídeos, eu espero você.

@@03
Lista dinâmica

[00:00] Chegou o momento de nós mexermos nessa lista que nós criamos nos vídeos anteriores. Como você pode perceber, é uma lista estática, onde nós temos aqui alguns valores pré-definidos. A ideia nesse vídeo é que nós possamos customizar essas células e que consigamos deixar igual esse layout aqui, que eu estou apresentando para você aqui no simulador. Então nós temos um texto, uma label aqui, com o nome da viagem, temos também uma imagem, temos o número de dias e também o valor.
[00:38] Então isso aqui vai ser o trabalho que nós vamos desenvolver nesse vídeo. Antes de começarmos a colocar a mão na massa, eu vou pedir para que você faça o download de alguns arquivos que nós vamos utilizar aqui, como por exemplo essas imagens, então cada imagem representa um destino. Eu coloquei esses arquivos dentro dessa pastinha Assets aqui, então eu tenho um "img1", "img2", "img3", 4 e 5. Então todas imagens, elas vão estar disponíveis para que você faça o download, na página de exercícios desse curso, lá na plataforma da Alura.

[01:20] Também tem esse arquivo aqui, "viagens.json", que na verdade nós estamos simulando aqui a resposta do servidor quando nós fazemos uma requisição. Então nós temos aqui esse arquivo e temos também essa pastinha Models, com esse arquivo "dados", que ele faz, na verdade, a decodificação desse JSOn e transforma isso em uma lista de viagem. Então essa constante aqui, "viagens", nós vamos utilizar nessas Views que nós estamos construindo.

[01:57] E ele lê, na verdade, esse arquivo JSON e transformar isso em uma lista de viagens, que é o que nós vamos utilizar. Então, recapitulando: você vai precisar desse arquivo "dados.swift", essa classe "Viagem", que já traz aqui algumas propriedades que nós vamos utilizar. Você também vai precisar desse arquivinho "viagens.json" e das imagens "img1" até "img5". Todos esses arquivos vão estar disponíveis para download lá na página da Alura.

[02:33] Depois que você fizer o download e colocar no projeto, igual eu mostrei para você, vamos continuar então mexendo na células da nossa lista. Vou clicar aqui em Resume para ele a mostrar novamente a pré-visualização. Uma dica que eu queria passar aqui para você, caso em algum momento você feche essa aba de pré-visualização, por exemplo assim, para voltar ao normal, basta você apertar a tecla "Command + Option" e a tecla "Return" ou "Enter".

[03:06] Então você apertou ,ele volta aqui; "Command + Option + Return". Então ele abre e oculta. Caso ele oculte e você queira exibir, "Command + Alt + Return". Bacana. Então vou clicar aqui em Resume, ele me mostra a pré-visualização. A ideia é que consigamos então analisar essa célula e pensar em uma forma de montagem. Então nós temos aqui um texto, embaixo nós temos uma imagem e embaixo nós temos duas labels, dois Text, que é esse objeto aqui que nós utilizamos, dois Text, um ao lado do outro.

[03:48] Conforme você for trabalhando com esse esquema de empilhamento, que aqui no Swift chamamos de StackView, pode ser Horizontal StackView ou Vertical StackView, você bate o olho no layout então você já imagina mais ou menos como é que você vai montar. Por exemplo, se eu sei que eu vou empilhar um elemento abaixo do outro, eu vou utilizar então um Vertical StackView.

[04:16] E se eu vou empilhar um elemento ao lado do outro, eu vou utilizar um Horizontal StackView. Então isso você vai pegando, conforme você for praticando, você vai conseguindo interpretar essa montagem de layout. Bacana. Já mostrei para vocês os arquivos que vocês vão precisar fazer o download para conseguir continuar aqui e mostrei também uma forma de nós desenvolvermos esse layout das células. Agora chegou a hora de nós colocarmos então a mão na massa.

[04:50] Primeiro passo que nós vamos fazer aqui é modificar essa lista estática. Então eu vou apagar todos esses textos aqui e eu vou implementar essa constante, que nós temos aqui nesse arquivo "dados.swift", que é essa lista, essa lista de "viagens". Eu vou utilizar ela na View principal. Então vamos lá: a ideia é que eu não utilize mais uma lista estática, então eu vou utilizar aqui aquele array de viagens, que eu já tenho acesso aqui.

[05:27] E aqui ele vai percorrer todas as viagens, então para cada viagem, eu vou fazer - o que eu vou fazer? Vou colocar aqui o texto, por exemplo, referente ao nome de cada viagem. Então "Text(viagem)", que é essa variável aqui, ".titulo", então (viagem.titulo)". Legal. Repara que ele já mostrou aqui, na nossa pré-visualização, o nome de cada viagem.

[06:05] Então essa lista não é mais uma lista estática, agora é uma lista dinâmica, de acordo com esse JSON que nós utilizamos aqui para simular uma requisição. Bacana. Então nós já avançamos em relação a isso. O próximo passo é analisarmos a célula e montar exatamente como nós estamos vendo aqui. Nós vamos continuar a montagem da célula no próximo vídeo.

@@04
Download dos arquivos

Dica: Clicando no link a seguir, você consegue fazer o download dos arquivos utilizados na aula.

https://caelum-online-public.s3.amazonaws.com/1445-swift-ui/Resources.zip

@@05
Célula customizada

[00:00] No último vídeo, então nós alteramos a lista estática, que nós estávamos utilizando, para uma lista dinâmica conforme o arquivo que eu disponibilizei para vocês, que é esse "viagem.json". Então agora estamos exibindo o título apenas de cada destino, então tem Ceará, Rio de Janeiro, Paraíba. Então nós já estamos mostrando isso aqui na lista. A ideia é que nós possamos continuar com implementação da célula, que é o título, a imagem, quantidade de dias e o valor e nós vamos então fazer isso agora.
[00:40] Já analisamos no vídeo anterior como será feita a montagem, temos aqui um elemento embaixo do outro e, na última linha, um texto ao lado do outro. Então vamos construir essa célula agora. Bom, como nós temos então um elemento abaixo do outro, tudo nos indica, para que possamos utilizar então um VStack, um Vertical StackView. Eu vou colocar o título dentro desse Vertical StackView. Então eu já coloquei aqui o título.

[01:16] Em seguida, nós temos então uma imagem. Então vamos colocar uma imagem, vamos chamar aqui a struct, a estrutura de imagem. Repara que é tudo bem intuitivo, pessoal, em SwiftUI: nós queremos colocar um texto, é "Text", uma imagem é "Image", é uma sintaxe bem amigável. Então eu vou chamar aqui a imagem, onde eu passo o nome - o nome da imagem já está serializado no objeto Viagem.

[01:49] Então nós temos aqui uma "struct", chamada "Viagem" e nós temos aqui então uma variável chamada "imagem", que nada mais é do que o nome da imagem. Então eu vou vir aqui, vou chamar o objeto "(viagem)", que nós estamos utilizando aqui na lista e eu vou passar aqui então a variável ".imagem" que contém o nome de cada imagem. Quando eu coloco a imagem, repara que ele estoura o nosso layout, a imagem ocupou um espaço bem maior do que o disponível.

[02:26] Então ela ocupou todo o espaço aqui da lista e também a parte de fora. Temos aqui uma linha azul, indicando que a imagem ultrapassou os limites disponíveis. Para que consertemos esse problema, nós temos uma propriedade chamada resizable, que por padrão as imagens são redimensionadas automaticamente para que ela ocupe todo o seu conteúdo, que pode ir além da tela - que é esse caso que nós estamos vendo.

[02:58] E com essa propriedade resizable - que é essa daqui, "resizable" - a imagem, ela fica automaticamente redimensionada para preencher o espaço disponível. Então nós temos aqui esse espaço, que nós estamos vendo, que é o espaço disponível para a imagem renderizar. Porém a altura da imagem ainda ficou um pouquinho estranha, ficou muito grande. Então vamos mexer na altura.

[03:27] Quando nós mexemos na altura, nós já estudamos isso nos vídeos anteriores, vamos recapitular agora, nós precisamos mexer no Frame. O Frame, ele nos dá a possibilidade de mexer e alterar a largura e a altura. A largura, queremos que ocupe todo o espaço disponível mesmo, porém a largura nós vamos mexer, para que fique um pouquinho menor. Então vamos lá.

[03:56] ".frame", aqui eu vou passar então a altura, que é o que me interessa nesse caso. A altura vai ser de ": 125" e nesse caso eu não vou precisar também do alinhamento, então eu vou apagar. Bacana. Então eu tenho aqui uma imagem, que eu utilizei o resizable, recapitulando, para que ela ocupe somente o espaço disponível e também eu diminuí a altura da imagem para 125.

[04:27] Se precisarmos futuramente alterar esse valor, vamos mexer aqui e vamos fazer algumas validações. Legal, só que nós ainda não terminamos, nós colocamos aqui somente um texto, uma imagem e temos a parte de baixo da célula, onde nós temos a quantidade de dias e o valor. Repara que eu tenho aqui um texto ao lado do outro, então, nesse caso, eu vou utilizar um Horizontal StackView, porque eu tenho um elemento ao lado do outro.

[04:57] Isso significa que eu posso utilizar um StackView dentro do outro. Repara que aqui eu tenho um Vertical StackView e dentro dele, eu estou declarando um Horizontal StackView. Isso é muito comum na construção de layout. Dentro desse Horizontal StackView, eu vou ter um texto. Esse texto vai conter a quantidade de dias, então "viagem.quantidadeDeDias". Se você tiver alguma dúvida em relação às variáveis que a classe Viagem tem, basta você vir aqui e abrir então a classe Viagem, que nós temos aqui várias propriedades.

[05:43] Legal, vamos voltar lá, apareceu aqui já a quantidade de dias, temos aqui 6 dias e tudo mais. Agora nós vamos colocar aqui o texto referente ao valor da viagem, então "Text()", vou colocar aqui "(viagem.valor)", "(viagem.valor)". Bacana. Com isso colocamos já todos os elementos necessários para montagem da célula, falta nós trabalharmos no espaçamento desses elementos. Vamos dar uma olhada?

[06:21] Eu tenho aqui uma label alinhada à esquerda, nesse caso aqui, nós deixamos aqui no centro e aqui eu tenho a label "quantidadeDeDias" também alinhada à esquerda, e a outra label alinhada à direita. Vamos começar por essa parte aqui de baixo, que é um pouco mais simples. Repara que eu tenho uma label, um espaço, em seguida, outra label. Esse espaço que eu tenho aqui no meio, nós já utilizamos uma estruturinha chamada Spacer, que nos ajuda exatamente nisso.

[06:54]"Spacer". Quando eu coloco um "Spacer", ele dá então aqui um espaçamento entre um elemento e outro. Repara que agora a quantidade de dias ficou na esquerda e o valor da viagem ficou à direita. Para finalizar então esse vídeo, agora precisamos alinhar essa label, esse texto "Rio de Janeiro" à esquerda, que é o alinhamento que chamamos de leading - leading é esquerda, trailing é direita.

[07:25] Então nós vamos alinhar à esquerda. Como o título, ele está dentro desse Vertical StackView, eu vou mexer no alinhamento do Vertical StackView. Então vou chamar aqui a propriedade de alinhamento, "alignment", e eu quero alinhar tudo isso à esquerda, ou seja, ".leading". Agora eu coloquei o título à esquerda. Com isso fechamos a primeira parte, onde nós criamos a célula da lista do nosso aplicativo aqui de viagens.

[08:06] Ainda falta o customizar aqui as labels, o título, o tamanho e tudo mais, mas a ideia principal nós já desenvolvemos nessa aula, que foi a criação da célula. Um ponto que eu queria chamar a atenção de vocês, que inclusive eu mencionei no vídeo anterior, e nós vamos resolver isso no próximo vídeo, é o seguinte: agora nós já completamos todo o layout, só que nós deixamos tudo isso em um arquivo só.

[08:36] Você pode perceber que o arquivo ficou bem extenso e a tendência desse arquivo é só aumentar, caso ocorra a inclusão de algum novo componente e tudo mais. E é sempre uma boa prática, que nós ao percebermos que o arquivo está crescendo, quebrarmos isso em arquivos menores.

[08:56] Então a ideia do próximo vídeo é quebrarmos, por exemplo, a parte de cima, que é o header, em um arquivo, deixar a lista com as células em outro, para que consigamos então minimizar esses arquivos e consigamos ter uma leitura mais efetiva do código. Isso é uma boa prática: sempre que conseguirmos quebrar em arquivos menores, para que consigamos ler o arquivo com uma facilidade maior, sempre é bem-vindo. Então vamos trabalhar nisso no próximo vídeo.

@@06
Refatorando Views

É comum, durante o desenvolvimento do projeto, identificarmos alguns potenciais problemas, como: arquivo muito extenso, regras de difícil compreensão, arquitetura, entre outros. Com base no que vimos na aula, marque as alternativas que justifiquem a refatoração.


Alternativa correta
O arquivo da View estava ficando muito extenso.
 
Correto! Sempre que você notar que o arquivo está muito extenso ou o código está difícil de entender, é uma boa prática separar um tempo para fazer os ajustes necessários no projeto.
Alternativa correta
Responsabilidades distintas entre views.
 
Correto! Para dar manutenção no código, é muito melhor cada um estar separado em arquivos diferentes.
Alternativa correta
O arquivo ContentView deve ter o mínimo de linhas possíveis.

@@07
Refatorando as Views

[00:00] Nesse vídeo, nós vamos começar a refatoração que eu havia comentado com você no vídeo anterior, onde nós falamos de boas práticas e quebra de arquivos. Nós temos aqui várias responsabilidades na mesma View, temos aqui a "ContentView", que é a View principal, onde nós temos o header, que é toda essa implementação aqui: "VStack Header", desde aqui até esse ".offset" ": -25", onde subimos os botões aqui um pouquinho para cima.
[00:33] Depois nós temos aqui a lista, nós temos aqui a célula. Então tudo isso dentro do mesmo arquivo, está uma salada e está tudo bem misturado. Então vamos começar a separar e dividir as responsabilidades de cada View em um arquivo diferente. Vamos começar então mexendo com o header do nosso app. O que vamos fazer aqui? A ideia é que tiremos todo esse pedação de código - vou selecionar desde esse "Mark: - VStack Header", então cliquei aqui, vou descer até esse ".offset" com o eixo "(y: -25)".

[01:17] Então nós vamos selecionar todo esse bloco de código. Eu vou apertar aqui a tecla "Command + X" para recortar isso daqui. Repara que agora o arquivo ficou bem mais enxuto, ele está listando apenas a TableView sem o header, porque nós acabamos de tirar. Eu vou começar a montar então aqui um novo arquivo, chamado HeaderView. Só para manter mais organizado, eu vou criar uma pastinha aqui com o nome Views.

[01:50] Então todas as Views, vamos manter dentro dessa pasta que eu vou criar. Então botão direito em cima do nome do projeto, em seguida vamos clicar aqui em New Group, novo grupo novo. Repara que foi criada uma nova pasta, vou chamar aqui de "Views". Essa pastinha eu vou deixa aqui, embaixo de Models. Eu vou passar esse "ContentView" para dentro dela, que é a View principal.

[02:19] Em seguida eu vou criar então um novo arquivo, que é o arquivo relacionado ao header. Então botão direito, novo arquivo. Ele abre a caixa de diálogo aqui, nós vamos manter selecionada essa opção SwiftUI View, então é importante você ter certeza que é essa opção que está selecionada. Se estiver, você vai dar um Next e vamos chamar aqui colocando o nome do arquivo.

[02:47] O nome vai ser "HeaderView". Beleza, agora que eu coloquei o nome, eu vou então clicar em Create. Bacana, ele cria um arquivo muito parecido com o ContentView. Nós temos aqui o nome do nosso arquivo, que implementa o protocolo View, e ele nos traz essa variável computada "body", que nada mais é do que uma View. O que vamos começar fazendo é: colocar aqui um StackView Vertical, "VStack", que é o Stack principal.

[03:22] E dentro dele, nós vamos colar toda a implementação do header que nós temos. Então eu colei tudo aqui, ele vai reclamar por vários pontos do código, porque ele vai tentar acessar essa variável View que nós temos aqui. Então ele está reclamando que ele não está achando a referência e ele não está conseguindo então gerar a pré-visualização. Da onde vem essa View?

[03:53] Então vou voltar aqui no arquivo principal. Essa View vem justamente desse objeto, o "GeometryReader", o leitor de geometria. Esse objeto nós utilizamos para setar provavelmente uma largura e por isso nós utilizamos então esse objeto. Podemos fazer o mesmo aqui, então nós vamos utilizar esse mesmo objeto nesse arquivo HeaderView. Então "GeometryReader", leitor de geometria.

[04:24] Aqui eu coloco o nome dele, "{ view in" e dentro eu coloco toda a implementação do StackView que nós temos. Então vamos lá. Todo esse espaço aqui. Selecionei todo esse bloco de código, colo ele aqui, vou clicar aqui em Resume, no lado superior direito, para que consigamos ver a pré-visualização e também identificar se não tem nenhum erro no nosso código.

[04:56] Aparentemente não, ele já exibiu aqui o header. Uma dica bacana para você conseguir enxergar exatamente o tamanho do componente que nós estamos renderizando, que nós estamos construindo, é mexermos na pré-visualização. Então repara que aqui, ele simula um iPhone inteiro, sendo que o nosso componente, ele tem um valor fixo, ele tem uma altura fixa.

[05:22] Nosso componente, ele tem uma altura de aproximadamente 400 de altura, então conseguimos mexer nessa pré-visualização. Então olha só, que bacana que fica. Aqui, onde nós temos o "HeaderView", nós conseguimos fazer o seguinte: eu consigo dar um ".preview", ".previewLayout" mesmo, vamos colocar um valor fixo. Esse valor vai ser 400 de largura por 220, aproximadamente, de altura.

[05:56] Quando eu faço isso, ele automaticamente muda o lado direito da pré-visualização, mostrando apenas o espaço onde nós desenhamos o nosso header. Então agora o nosso código ficou bem melhor, porque nós dividimos a responsabilidade do header, colocamos aqui apenas o que é referente ao header. E, no arquivo principal, que é esse ContentView, ele ficou também bem mais enxuto.

[06:25] Vou clicar aqui em Resume. Ele ficou bem mais enxuto. Por enquanto ele está mostrando apenas a lista, no próximo vídeo vamos continuar a refatoração, falando um pouquinho da célula e também implementando novamente o header aqui dentro. Até o próximo vídeo.

@@08
Separando as responsabilidades das Views

[00:00] De volta com o nosso projeto, no vídeo anterior nós começamos a refatoração da ContentView, que é a View principal do nosso projeto, e, para finalizar essa aula, nós vamos também separar a célula em um novo arquivo. Então, para terminar, vamos selecionar aqui o nosso Vertical StackView. Então eu vou selecionar toda essa parte aqui embaixo da "List", vou recortar, "Command + X" e eu vou criar um novo arquivo, onde nós vamos implementar a criação da célula.
[00:34] Botão direito em cima da pastinha View, novo arquivo. Aqui vamos manter a opção SwiftUI selecionada e eu vou nomear esse arquivo como "CelulaViagemView", Create. Ele, por default, por padrão, já traz duas estruturas que nós já conhecemos, que é a estrutura onde tem a variável "body", que nós desenhamos a tela, e também a estrutura de pré-visualização.

[01:04] Para começar, vamos tirar esse texto, que nós não vamos utilizar aqui e vamos colar a implementação da célula da nossa lista dentro desse arquivo. Ele vai aprontar aqui alguns erros, principalmente porque nós não temos esse identificador "viagem", nós não temos nenhuma variável do tipo viagem para utilizar aqui, então vamos começar criando essa variável.

[01:31] Aqui, em cima do "body", eu vou criar uma variável chamada "viagem", que é o mesmo nome que nós estamos utilizando aqui. Essa variável é do tipo "Viagem" e quando nós estamos utilizando uma struct, nós não precisamos criar um método construtor, ele automaticamente já infere e conseguimos então passar essa variável sempre que necessário, que é exatamente o que a pré-visualização está chamando a nossa atenção.

[02:05] Eu vou clicar aqui para corrigir o problema, ele fala que agora, para utilizar a "CelulaViagemView" nós precisamos passar uma "viagem". Eu vou utilizar a lista de viagens que nós já temos, na posição "[0]", que é a primeira, só para conseguirmos então montar a nossa célula. Bacana, já colei aqui implementação da célula, criei aqui uma variável do tipo "viagem" para utilizar aqui.

[02:29] Agora vamos voltar na célula - na célula não, na View principal, que é a ContentView e nós vamos utilizar essa célula. Então "CelulaViagemView", que nós acabamos de criar, eu vou inicializar ela passando a "viagem". Então aqui eu preciso passar uma "viagem", que é exatamente o que a nossa lista está iteirando. Legal, vou clicar aqui em Try Again para ele tentar renderizar.

[03:05] Ele vai gerar um build e vai atualizar aqui a pré-visualização. Bacana, então nós já separamos responsabilidade das células, agora o que precisamos é voltar a implementar o header. Repara que tiramos ele no vídeo anterior e ainda não colocamos de volta. Eu vou colocar aqui a chamada do header, "HeaderView". Bacana. Repara que ficou um espaçamento em branco e ele ficou um pouco maior, a altura do header ficou um pouco maior do que o necessário.

[03:45] Para corrigir esse problema, vamos então utilizar o método ".frame", que nós já conhecemos, onde nós vamos passar então uma altura fixa para o nosso header. Então vamos lá, aqui embaixo do header vou chamar um ".frame", a largura vai ser a própria largura da tela, então "view.size.width". A altura nós vamos deixar com o valor de 200 e o alinhamento no topo.

[04:18] Isso já vai resolver o tamanho do header. A última coisa que eu queria mostrar para você é aqui, na parte da pré-visualização da célula. Repara que nós criamos uma célula com uma altura fixa, que é uma altura menor do que o tamanho do device que nós estamos utilizando aqui na pré-visualização. Sempre que isso acontecer, nós podemos alterar o tamanho da pré-visualização, nós já vimos isso no vídeo anterior, onde nós utilizamos a pré-visualização do header, que é essa parte aqui.

[05:00] Então eu clico em Resume, ele renderiza apenas o tamanho que nós configuramos aqui nesse “.previewLayout”. Vamos fazer a mesma coisa com a célula, para deixar do tamanho certinho da pré-visualização. Então vou utilizar esse método ".previewLayout", só que eu vou alterar a largura e a altura. A largura, eu vou deixar por 350 e altura 200. Vou clicar aqui em Resume novamente.

[05:30] Ele vai atualizar e vai mostrar apenas o tamanho da célula que nós configuramos aqui no ".previewLayout". Bacana, com isso terminamos então essa parte de refatoração, onde o objetivo foi mostrar para você que sempre que você perceber que a View ou o seu arquivo de regra de negócio, ele está crescendo ou está ficando difícil de você ler e entender aquele código, separa um tempinho, pensa no que você pode fazer de diferente para melhorar a legibilidade, para melhorar o nome das variáveis.

[06:09] Ou, se o arquivo estiver ficando muito grande, que era o nosso caso aqui nesse ContentView, separamos a responsabilidade de todas as Views em outros arquivos, com isso deixamos o arquivo bem enxuto, agora batemos o olho, já sabemos que temos aqui alguns componentes separados. Tudo isso nos ajuda a deixar o nosso trabalho melhor, o nosso projeto com uma qualidade ainda melhor.

[06:34] Então é muito importante e é uma boa prática sempre que possível trabalharmos com esse tipo de refatoração. Fechamos então essa aula, no próximo vídeo vamos começar a testar o layout, que nós desenvolvemos até agora, em outros devices, em outros tamanhos de iPad, de iPhone. E vamos começar então a ver o que vai acontecer com o nosso layout nesses outros devices. Nos vemos então no próximo vídeo.

@@09
Consolidando seu conhecimento

Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Caso já tenha feito, excelente. Se ainda não, é importante que você implemente o que foi visto no vídeo para poder continuar com o próximo capítulo que tem como pré-requisito todo código aqui escrito. Se por acaso você já domina esta parte, em cada capítulo você terá a opção de baixar o projeto feito até aquele ponto. Você encontrará o link para download na próxima explicação do capítulo.

Opinião do instrutor

O gabarito deste exercício é o passo a passo demonstrado no vídeo. Tenha certeza de que tudo está certo antes de continuar. Ficou com dúvida? Recorra ao nosso fórum, não perca tempo! :)

@@10
Download do projeto

Dica: Clicando no link a seguir, você consegue fazer o download do projeto.

https://github.com/alura-cursos/alura-viagens-swiftui/archive/3fb5e11603218eb507f7154eea07ad054cd82134.zip

@@11
O que aprendemos?

Nesse capítulo, aprendemos a:
criar novas views;
refatorar a View principal;
criar células customizadas para lista.

#### 08/08/2023

@04-Testando em outros dispositivos

@@01
Testando em outros devices

[00:00] A ideia dessa aula é ajustarmos o nosso projeto para que ele se adeque a diferentes tamanhos de devices, como iPhones e iPads. Como já vimos nos capítulos anteriores, ao modificar o iPhone, na parte superior aqui do Xcode, onde ele nos fornece alguns simuladores diferentes, a pré-visualização é alterada automaticamente. Vamos começar trocando simulador para o iPad Pro 11. Quando eu seleciono o iPad Pro 11, ele vai recarregar e ele mostra aqui, na pré-visualização.
[00:35] Eu vou até diminuir aqui um pouquinho o zoom, na parte inferior, vou deixar aqui com 75%. Ele mostra então o nosso aplicativo na versão do iPad. Como pode perceber, o layout para iPad não ficou muito legal, temos problemas de tamanhos de labels, as imagens aqui, elas ficaram um pouquinho distorcidas e o alinhamento dos botões no header também não ficou muito legal.

[01:06] Por isso a ideia desse vídeo é começarmos a corrigir problemas do header, então vamos começar por essa parte aqui de cima. Então vamos abrir o arquivo responsável pela construção do layout do header. Eu vou abrir aqui o menu da esquerda e vou selecionar o HeaderView. Vou puxar aqui um pouquinho mais para o lado, vou fechar a parte do menu da esquerda.

[01:33] Então vamos começar analisando a label "("alura viagens")", que é essa labelzinha aqui, que no SwiftUI chamamos de "Text". Um dos problemas é exatamente esse campo aqui, "size". Temos aqui o "size: 20". Esse tamanho é utilizado para qualquer tipo de dispositivo que nós buildarmos aqui no nosso projeto, então pode ser uma iPad, pode ser um iPhone, iPhone Pro, qualquer um que seja o device, o tamanho vai ser 20.

[02:03] A ideia é configurar um tamanho para iPhone, nesse caso podemos deixar 20 mesmo, e outro para iPad. Se você acompanha os cursos aqui da Alura, no curso de Layouts Responsivos com o UIKit, onde nós construímos esse mesmo aplicativo, só que com o UIKit, nós falamos sobre Constraints e lá aprendemos um pouquinho sobre size class, que nada mais é do que tamanho de classe.

[02:32] É uma nomenclatura que a Apple usa para explicar a diferença dos tamanhos entre iPhone e iPad, basicamente. Agora vamos então relembrar um pouquinho sobre size class - size class, vou digitar aqui e entrar na documentação da Apple. Ele nos dá aqui algumas informações interessantes a respeito desses tamanhos e dessa nomenclatura, que nos ajuda a entender. Então quando falamos em size class, basicamente temos dois tipos: o Regular e o Compact.

[03:07] Então aqui estamos vendo as orientações em Portrait, significa que é o iPhone ou o iPad, quando ele está em pé e aqui temos a orientação em Landscape, que basicamente é o iPad e o iPhone deitado, na Horizontal. Se formos olhar aqui o Portrait, que é o nosso caso, que é o iPhone e o iPad em pé, temos aqui o tamanho Regular para largura e Regular para altura. Então o iPhone - na verdade o iPad Pro 11 em Portrait, ele é Regular, Regular, largura regular e altura regular.

[03:52] O iPhone, ele é Compact na largura - Compact, compacto - e altura é Regular, então o iPhone é um pouquinho diferente. Isso nos dá algumas opções para que configuremos o tamanho da fonte, por exemplo, de acordo com a orientação e o size class do dispositivo. Ou seja, conseguimos identificar se é um iPhone ou se é um iPad basicamente por esses tamanhos aqui de classes.

[04:25] Geralmente o iPad é Regular Regular e o iPhone é Compact Regular, no caso de Portrait. No Landscape muda um pouquinho, mas sempre que você tiver alguma dúvida em relação à essas nomenclaturas de size class é só dar uma olhadinha aqui na documentação que ajuda bastante a entender. Agora que fizemos uma rápida revisão desses nomes um pouquinho desconhecidos, vamos começar a utilizar essas nomenclaturas.

[04:56] E você vai ver que não é difícil e é bem usual, vamos começar a criar e vamos memorizar rapidinho esses nomes. Então o que eu vou fazer? Eu preciso saber se o dispositivo é um iPad ou um iPhone. Para isso, eu utilizo o size class, que é a nomenclatura Regular ou Compact. Então vamos fazer o seguinte: vamos criar uma variável de ambiente, então por isso eu vou usar essa palavra chave aqui "Environment".

[05:33] Ela nos permite saber qual é, por exemplo, o horizontal size class, ou seja, esse tamanho aqui, o horizontal size class. Como é que eu faço isso? Eu utilizo essa sintaxe, onde eu vou procurar saber se é horizontal ou vertical, no caso aqui estamos validando se é horizontal. E eu crio uma variável com o nome que eu quiser, como por exemplo "horizontalSizeClass". Basicamente é isso.

[06:16] Essa variável que eu criei, ele vai consultar qual é o tamanho da classe do device que nós estamos simulando. Com isso fica um pouquinho mais fácil, porque olha só o que eu posso fazer agora: onde eu tenho aqui essa configuração do tamanho de fonte com 20, eu posso criar uma verificação aqui, de acordo com o "horizontalSizeClass". Como é que eu faço isso? Vou apagar esse 20, eu vou chamar essa variável que eu acabei de criar: "self.horizontalSizeClass" e eu verifico com um if ternário se ele é Compact, por exemplo.

[06:52] ".compact". Se for Compact, eu vou querer deixar o tamanho 20. O que é Compact mesmo? Compact é a nomenclatura utilizada, no caso de Portrait, para os iPhones. Então olha só: se a largura for Compact, ou seja, se a largura for compacta, eu sei que é um iPhone; se a largura for Regular, basicamente eu sei que é um iPad. Então eu vou utilizar essa verificação aqui: se for Compact, ou seja a largura de um iPhone, tamanho 20; se for algo diferente disso, ou seja, Regular, no caso para iPad, eu vou utilizar o tamanho da fonte 30.

[07:40] Basicamente é isso que eu vou utilizar. Apaga aqui o espaço. Bacana, então vamos conferir essa alteração clicando aqui em Resume. Repare que a fonte que nós estamos alterando é fonte "("alura viagens")". Eu vou clicar aqui, ele vai tentar fazer o reload. A fonte já ficou um pouquinho maior, significa que ele já está obedecendo o tamanho de classe que nós estamos validando.

[08:11] Legal, então nós vamos continuar alterando o tamanho dos próximos textos: Especial e Brasil, utilizando a mesma lógica. Então o que eu vou fazer? Em "("ESPECIAL")", é esse próximo texto aqui, eu vou verificar o tamanho dele. Texto "("ESPECIAL")", cor do texto, fonte - size está aqui. É o mesmo problema, o tamanho está fixo. Então vamos utilizar a mesma verificação ".self.horizontalSizeClass=", ela é igual a ".compact"?.

[08:49] Se for igual à Compact, nós vamos continuar utilizando o tamanho 20, se não for Compact, ou seja, se for iPad, eu vou utilizar um tamanho de fonte um pouquinho maior, como por exemplo, 30. A mesma coisa para o texto "(BRASIL)". Texto "(BRASIL")", aqui eu mudo a cor do texto, aqui eu mudo a fonte e aqui está o tamanho. O mesmo esquema, aqui nós estamos utilizando 23 fixo para qualquer dispositivo, vamos fazer a verificação "self.horizontalSizeClass". Se for igual a compacto, o que eu vou fazer?

[09:29] Vou continuar utilizando 23. Se não for, eu vou utilizar o tamanho 33. Bacana, então nós já começamos a resolver esses problemas de tamanho, de layout. Eu vou rodar aqui, no simulador mesmo. Eu estou aqui com o meu iPad configurado e eu vou gerar um build então para conferirmos e vermos de fato, no simulador, como é que está ficando. Então vamos aguardar o build.

[10:07] Olha só: a fonte nós já conseguimos alterar, então ela já está um pouquinho maior, Especial também, Brasil também, isso está ok. Os próximos passos são: alterar o posicionamento e tamanho do botão, aumentar um pouquinho o header e depois começar a mexer então na célula da tabela. Só para você conferir, eu vou gerar um build novamente aqui, com um iPhone 8, para você ver que na versão do iPhone ele continua com o mesmo tamanho.

[10:44] Então repara que realmente o size class nos ajuda a identificar qual é o dispositivo. iPhone continua normalmente, iPad já está então setando a configuração de fonte que nós acabamos de implementar. No próximo vídeo então vamos continuar mexendo no header e fazendo as devidas verificações. Até já.

@@02
Testando o app com iPad

[00:00] No vídeo anterior estávamos criando validações de acordo com o size class, ou seja, o tamanho de classe do dispositivo. Nós já começamos então mexendo aqui na fonte de alguns Texts, como, por exemplo, do texto "("alura viagens")", "("ESPECIAL")" e "("BRASIL")" de acordo com a variável de ambiente que nós criamos. Fizemos também uma rápida revisão do conceito de tamanho de classes, vimos Compact e Regular, a diferença entre esses dois termos, amplamente utilizados aqui.
[00:33] E continuando, agora nós precisamos alterar o tamanho da fonte do botão e o alinhamento dos botões Hotéis e Pacotes. Vamos começar alterando a altura do botão Hotéis de acordo com o seu size class. Então o que vamos fazer? Vamos identificar onde estão esses botões, Brasil - na verdade, Hotéis e Pacotes. O primeiro botão, ele está aqui, botão "("Hotéis")", e o botão "("Pacotes")" está aqui embaixo.

[01:10] Vamos lá então. Temos o mesmo problema, que é a questão do tamanho da fonte. Podemos alterar a fonte de acordo com o tamanho de classe, de acordo com o size class. Para isso, vamos utilizar a variável de ambiente que nós acabamos de criar, que é a "horizontalSizeClass". Fazemos um if ternary: se ela for igual ao tamanho compacto, que é o tamanho usado em iPhone, no caso de horizontal, nós continuamos com o mesmo tamanho.

[01:46] Se não, o tamanho vai ser 24. Aqui ele está quebrando um pouquinho o layout porque estamos utilizando a pré-visualização com iPad. Nós poderíamos também alterar aqui o tamanho para nos ajudar, então, por exemplo, eu poderia deixar aqui 400 e uma largura um pouquinho maior - você consegue ir acompanhando o tamanho de acordo com a View que você está configurando.

[02:15] Nesse caso, como nós vamos utilizar o simulador, eu vou rodar daqui a pouco e já vamos conferindo as alterações. Vamos mexer também na fonte do botão Pacotes. É a mesma validação, então vou utilizar aqui a variável de ambiente "horizontalSizeClass". Se for igual a compacto, vamos manter o mesmo tamanho, que é 17, e se não for, 24. Bacana, vou rodar aqui o simulador, vamos conferir as alterações do botão Hotéis e do botão Pacotes.

[02:58] Repara que a fonte já foi alterada, então a configuração do size class está funcionando perfeitamente. Agora precisamos corrigir o alinhamento. Repare que nessa versão do iPad, os botões ficaram alinhados perto das bordas. Então eu tenho aqui o botão Hotéis, que está perto da borda, e o Pacotes também. Vamos alinhar então o botão Pacote. O que vamos fazer com o alinhamento?

[03:28] Vamos utilizar essa opção do ".offset", que na verdade é esse espaço que ele dá de 50, que nós configuramos quando nós estávamos desenvolvendo o layout para iPad. Esse valor 50 representa esse espacinho aqui entre essa margem do botão e a margem esquerda do simulador. Então vamos utilizar uma validação. Qual vai ser essa validação? Vamos dividir o tamanho aqui por 4, do header, a largura dele: dividido por 4 temos exatamente o tamanho que nós queremos deixar aqui no alinhamento.

[04:17] No caso, nessa opção ".offset". Então, o que eu vou fazer? Para eu conseguir dividir a largura dessa View roxa aqui por 4, eu preciso ter acesso à View. Nós já temos acesso à View. Então o que eu vou fazer aqui? Primeiro eu vou apagar esse valor fixo e vou fazer a verificação, que nós já estamos acostumados a fazer: se for "horizontalSizeClass" - se for igual a compacto, eu vou utilizar o valor que já estava, nós não vamos mexer, o valor continua sendo 50.

[04:52] Se for iPad, eu vou pegar a "view.size", eu vou pegar aqui a largura e eu vou dividir por 4, aí eu consigo ter exatamente o valor do espaçamento que eu preciso. A mesma coisa com o botão Pacotes: aonde eu tenho aqui o valor negativo, de ": -50" - negativo por quê? Porque ele vai pegar esse espaço para trás, então é ": -50", para que ele fique nesse espacinho aqui. Nesse caso, nós vamos utilizar ": -50" se for compacto.

[05:31] Então ".horizontalSizeClass", se for igual a compacto, ele continua ": -50". Se não for, eu vou deixar negativo o valor da divisão da largura da View e ele vai conseguir então um posicionamento baseado na divisão da largura dessa View. Vou rodar aqui mais uma vez no simulador, para conferirmos. Repara que agora ele está posicionado de acordo com a divisão que nós fizemos aqui, ficou bem melhor do que ele perto das bordas.

[06:23] Porém ainda não terminamos. O tamanho do header, ele ainda ficou um pouquinho estranho, olha a altura dele. Então vamos fazer o seguinte: vamos mexer no header, só que dessa vez vamos mexer onde chamamos ele, na View principal, no arquivo "ContentView", nós temos aqui o header, onde nós temos o método ".frame" e aqui temos um tamanho fixo de 200, aproximadamente 200 a 220.

[06:55] Vamos precisar alterar então esse valor fixo de 200, porque esse valor de 200 funciona bem no caso de iPhone, iPad ele fica um pouquinho quebrado. Então vamos mexer exatamente nesse valor. Primeiro eu vou criar aqui uma variável de ambiente, igual nós fizemos no outro arquivo. A sintaxe é um pouquinho diferente, eu começo com "@Environmnet", eu digito o tipo de tamanho de classe que eu quero, no caso eu quero verificar "horizontalSizeClass".

[07:36] E aqui eu crio uma variável com o nome que eu quiser: "horizontalSizeClass". Com essa variável, eu já posso então fazer a alteração que eu preciso, que é tirar esse valor fixo. Então qual é a ideia? Eu vou chamar aqui "horizontalSizeClass", verificar se ele é compacto. Se for, vamos continuar deixando 200, se não for, vamos deixar um tamanho um pouquinho maior, de 310. Só que como nós alteramos aqui, no header nós também deixamos um valor para a altura, onde também nós precisamos verificar.

[08:23] Então a altura do header, olha só, eu tenho aqui o método ".frame", onde eu tenho uma altura de 180, na verdade aqui podemos deixar 200, igual estava lá. Só que eu vou fazer a mesma verificação: se for "horizontalSizeClass", ": 200", se não for, ": 310". Então ele vai ficar um pouquinho maior, de acordo com o tamanho de classe. Para testar, vou rodar aqui mais uma vez o simulador, vamos acompanhar as alterações.

[09:03] Então ele ficou um pouquinho maior, muito bom. Repara que o tamanho do botão Hotéis e do botão Pacotes ficou um pouco pequeno, vamos alterar isso no próximo vídeo, e também vamos mexer no espaçamento da label em relação à margem superior. Uma dica é sempre que você estiver implementando esse tipo de validação, roda também o seu projeto em um iPhone, para ter certeza que você colocou a validação corretamente, não colocou direto o valor para o iPad, ou seja, caso você tenha esquecido, você já pega aqui a diferença.

[09:45] Olha só, então repara que para iPhone continua com o tamanho original, que nós configuramos, e para iPad ele também já está ficando um pouquinho melhor. No próximo vídeo então vamos continuar mexendo no tamanho desses dois botões aqui e também no posicionamento dos textos. Nós continuamos a seguir.

@@03
Configurando tamanhos com @Environment

[00:00] Nós estamos trabalhando então com size classes, tamanho de classes, onde nós conseguimos identificar, por exemplo, se o device é um iPhone ou é um iPad, e a partir disso nós conseguimos tratar o tamanho, o posicionamento e qualquer outra configuração que nós identificarmos no nosso layout. Nós estamos trabalhando então no header, nós já fizemos algumas alterações no vídeo anterior, onde nós mexemos no tamanho e posição dos Texts.
[00:32] Porém ainda não terminamos de mexer nos botões e tudo mais. Antes de continuarmos, como você pode ver, a pré-visualização aqui ficou um pouquinho estranha, porque nós estamos alterando as configurações baseado na nossa variável de ambiente "horizontalSizeClass" e não conseguimos ver se a pré-visualização é de um iPhone ou de um iPad, e fica um pouquinho confuso.

[00:58] Vamos resolver isso mexendo nessa "struct" aqui, "HeaderView_Previews:", onde temos um header como valor fixo também de largura e altura, por isso que está dando esse probleminha. A ideia é nós temos aqui duas Views do tipo "HeaderView": uma configurada para iPhone, para a visualização para iPhone, e a outra para iPad. Vamos conseguir fazer essa verificação baseado também no size class.

[01:28] Então vamos começar: primeiro passo é mexermos aqui na pré-visualização. Nós vamos então criar aqui um grupo, nós vamos agrupar as duas Views, baseado nessa estrutura "Group". Dentro dessa estrutura, eu vou colocar o que nós já temos, que o header, então eu vou colocar aqui o nosso header. Esse header, ele também está com o tamanho fixo, que ele funciona bem quando nós estamos vendo, por exemplo, em um iPhone.

[01:57] Então eu vou justamente setar essa configuração de ambiente "Environment". Aqui, eu vou pedir para ele exibir essa View caso seja a classe do tamanho de classe Compact, ou seja, um iPhone. Como é que eu faço isso? A mesma sintaxe que nós declaramos essa variável aqui em cima: "." e o tipo de classe que eu quero verificar.

[02:20] Então vamos lá: ".horizontalSizeClass,", o valor dela que eu quero comparar é o ".compact", ou seja, normalmente de um iPhone. Então ele já modificou aqui a pré-visualização, como você pode ver. Dentro desse grupinho, ele permite que eu agrupe outras Views, então eu vou utilizar aqui o comando de cópia, para ganhar tempo. Vou utilizar aqui uma outra View.

[02:53] A diferença dessa View é o tipo de classe que eu quero que ele identifique: aqui nós verificamos se ele é compacto, aqui nós vamos verificar se ele é regular - ".regular". Se for regular, eu sei que nós estamos mexendo com um iPad, então eu posso aumentar, por exemplo, o tamanho. Ao invés de eu deixar fixo, eu vou deixar um tamanho um pouco maior, aqui por exemplo, ": 835" e altura, vou colocar aqui ": 310".

[03:24] Repara que agora fica muito mais fácil de eu conseguir identificar as alterações e também ir conferindo as mudanças. Então, no vídeo anterior, nós mexemos aqui já no tamanho dos Texts, gora vamos seguir mexendo um pouquinho aqui no posicionamento da label do canto superior, ao topo, para que ele fique mais ao centro, essa label Especial e Brasil, e, para finalizar, também nós vamos mexer no posicionamento e no tamanho dos botões.

[03:57] Legal, então vamos lá. A primeira coisa que vamos fazer é identificar onde está essa label, ou seja, esse texto alura viagens. Ele se encontra aqui em cima, foi um dos primeiros que nós já criamos e mexermos, e vamos começar então mexendo um pouquinho aqui ".padding". O padding é a distância que ele dá, baseado em uma margem que eu coloco aqui, no caso no topo, então a distância do topo com 50 pontos.

[04:29] Só que esses 50 funciona bem quando nós estamos vendo um iPhone. Para iPad, vamos aumentar um pouco esse espaçamento, para que essas labels aqui fiquem mais ao centro do nosso header. Então é isso que vamos fazer. É um pouquinho repetitivo o trabalho aqui, que é verificar, nada além disso. Então eu vou verificar se é do tamanho compacto.

[04:54] Se for compacto, eu vou continuar colocando valor de 50, se não for, eu vou colocar aqui, por exemplo, ": 90". Repara que ele aumentou o valor entre o topo do texto e a margem superior. Beleza, o próximo passo então é alterarmos o tamanho dos botões Hotéis e Pacotes. Então vamos lá. Eu vou descer aqui mais um pouquinho, aqui embaixo temos o nosso botão Hotéis, é um botão.

[05:29] E logo embaixo nós temos aqui o Frame. Nós temos aqui então o mesmo probleminha que é o tamanho fixo. Nós precisamos alterar a largura e alterar a altura baseado no tamanho de classe - Compact ou Regular, para iPad. Então vamos lá, a mesma verificação: se o "horizontalSizeClass" for compacto, o que nós vamos fazer aqui? Nós vamos continuar com o mesmo valor que era 100, se não for, ": 150".

[06:05] Nós estamos mexendo aqui na largura. Repara que na pré-visualização, que a largura do nosso botão já aumentou em relação ao botão Pacotes. Agora nós precisamos alterar a altura. A altura vai ser o mesmo esquema: vou recortar esse 50, vou colocar aqui mais uma verificação "horizontalSizeClass", se for compacto mesmo valor, se não for, nós vamos utilizar aqui ": 75".

[06:36] Bacana, olha só o tamanho que ficou o botão em relação ao botão Pacotes, já está muito melhor quando utilizamos a visualização do iPad. Agora a mesma coisa, nós vamos alterar aqui o Frame do texto, na verdade do botão Pacotes. Ele ficou bem menor que o Hotéis, vamos deixar com as mesmas verificações. Então vamos lá. Vou chamar aqui a nossa variável de ambiente, verificar se é compacto.

[07:09] Se for, eu continuo com 100, se não for, ": 150". A altura, a mesma coisa: se for compacto, continuamos com 50, senão for, ": 75". Legal, olha só o tamanho dos botões, já estão bem mais bonitos e maiores em relação à visualização do iPad. Só que quando nós alteramos a altura, por exemplo, do botão, nós perdermos o alinhamento, como você pode ver aqui na pré-visualização, aqui de cima: o final da View roxa, desse StackView aqui, ele tem que dar de encontro ao meio do botão Hotéis.

[07:53] Quando nós mexemos na altura do botão, repare que ele não está mais ao centro, ele está um pouquinho acima, então está um pouquinho torto. Vamos alterar isso mexendo no offset, que é o espaçamento que nós demos aqui de -25, que funciona muito bem quando o tamanho de classe é compacto, ou seja, é um iPhone. Agora vamos precisar fazer uma outra validação, porque se for iPad nós temos que puxar esses dois botões um pouquinho mais para cima, para que ele fique bem no centro.

[08:24] Como é que chegamos a esse valor 25? Nós chegamos a esse valor porque nós precisamos subir os botões a metade da altura, então a altura do botão quando nós estamos trabalhando com o iPhone é 50, metade de 50 é 25. E quando nós estamos trabalhando com o Ipad, nós criamos aqui uma outra verificação por botão, que a altura é 75, então a metade de 75 é 37,5. Então, quando for iPad, nós temos que subir - 37,5.

[09:00] Essa é a lógica que nós vamos aplicar aqui. Bacana, então eu vou utilizar a variável de ambiente que nós já temos, que é o nosso UserInterfaceSizeClass, que é o "horizontalSizeClass", se for compacto nós vamos continuar utilizando o -25, que é a metade da altura do botão. Se não for, a metade de 75, que no caso que é 37,5, ": 37.5", só que aqui é menos, ": -37.5".

[09:36] Agora sim, o nosso botão ficou exatamente alinhado à margem inferior do StackView roxo. Bacana, para conferir então todas essas alterações que nós fizemos aqui no header, eu vou buildar primeiro aqui no iPhone, para vermos se continua igual, se não esquecemos nenhuma verificação para trás. E depois nós vamos rodar o simulador também do iPad. Então ele está subindo aqui a aplicação.

[10:12] Legal, a princípio não temos nenhuma quebra de layout, não esquecemos de nenhuma verificação. Eu vou agora buildar aqui no iPad Pro 11, por exemplo. Eu vou rodar aqui o simulador. Legal, então só: o header, aparentemente, está funcionando bem nos dois casos, tanto no iPhone quanto no iPad. Nós temos o tamanho das labels, o posicionamento dos botões e o tamanho também dos botões alterados de acordo com o size class do dispositivo.

[10:48] No próximo vídeo vamos continuar alterando os componentes de baixo da célula, como você pode ver, a imagem ficou distorcida, o tamanho dos textos aqui dentro da célula também não está muito legal. Então vamos prosseguir criando essas verificações para deixar o nosso aplicativo responsivo para os dois casos. Nós continuamos a seguir.

@@04
Size classes

Durante o curso trabalhamos com a proposta de criar um layout que se adapte tanto para iPhone quanto para iPad. Com base no que aprendemos em aula, como é possível customizar valores, como largura, altura, posicionamento entre outros, para que se redimensionem em dispositivos maiores, como por exemplo iPad?


Alternativa correta
Quando setamos valores fixos, eles se readaptam automaticamente quando ocorre a mudança de classe do dispositivo. Para isso precisamos utilizar a notação @Environment.
 
Alternativa correta
Podemos setar constraints nos elementos e mudar o valor de acordo com o size class.
 
Alternativa correta
Podemos criar uma variável de ambiente @Environment comparando o tamanho da classe tanto na vertical quanto na horizontal. Através dela, conseguimos saber o size class do dispositivo e fazer as verificações necessárias.
 
Correto! O principal é identificar o size class do device e a partir disso fazer as verificações necessárias com os valores customizados.

@@05
Customizando o tamanho dos elementos da célula

[00:00] Para finalizar essa aula, agora nós precisamos tratar o tamanho dos elementos de dentro da célula da nossa lista. Como você pode perceber, os textos, a imagem, ficaram um pouco distorcidos, e vamos alterar isso nessa aula. Então vamos começar mexendo nos textos, onde nós já fizemos algo parecido aqui no header, fazendo algumas verificações de acordo com o tamanho de classe e vamos seguir utilizando esse mesmo método, agora na célula.
[00:36] Então vamos lá. O que eu vou fazer? Eu vou começar criando uma variável de ambiente para verificarmos o size class do device. Então é o mesmo esquema que nós já estávamos utilizando, a keyword "Environment". E o que precisamos fazer? "(/.", tipo de size class que queremos comparar, nesse caso é o ".horizontalSizeClass", e aqui declaramos uma variável com o nome que nós quisermos, então vou colocar aqui "horizontalSizeClass".

[01:15] Bacana, isso nos possibilita começar a fazer as verificações nos textos, então eu vou aproveitar para mexer na fonte. Então vamos colocar, por exemplo, a fonte "Avenir", que é a fonte que nós já estamos utilizando no resto do projeto, e o ponto chave é exatamente essa parte, em size. Um bom tamanho para iPhone, por exemplo, seria 14. Mas nós não podemos deixar nesse tamanho fixo, porque nós também vamos utilizar o nosso aplicativo no Ipad. Então o que eu vou fazer?

[00:01:49] Eu vou fazer uma verificação de acordo com o size class, "self.horizontalSizeClass", se for compacto, nós vamos utilizar o tamanho 14. Se não for, podemos colocar aqui, por exemplo, ": 24". Legal, a mesma coisa nós vamos fazer com esses dois textos aqui debaixo, então é a mesma ideia. Eu vou alterar a fonte, vai ser uma fonte customizada, a fonte vai a "Avenir", o tamanho vai ser de acordo com o size class, então aqui eu coloco a minha verificação, se for compacto, vamos colocar então o tamanho de 14, se não for, ": 24".

[02:34] E a mesma coisa com o valor: ".font", fonte customizada "Avenir", o tamanho vai ser de acordo com o tamanho de classe. Se for compacto, 14, se não ": 24". Beleza, então nós já temos aqui algumas verificações, eu vou rodar o dispositivo para conferirmos. Eu estou aqui com o simulador do iPad e vamos ver então se o tamanho das fontes já foi alterado. Olha só que bacana: as fotos já estão um pouquinho maiores, já fica mais fácil a legibilidade para o usuário, fica agradável para entendermos aqui o contexto da célula.

[03:20] Legal, agora o que nós precisamos fazer é alterar o tamanho dessa imagem. Esse tamanho está bacana, que é 125, quando nós estamos trabalhando com iPhone. Para iPad podemos aumentar um pouquinho, então eu vou fazer a mesma coisa: eu vou fazer aqui uma verificação, se for compacto, eu vou continuar utilizando 125, se não for, eu vou colocar aqui, por exemplo, ": 200". Vou rodar o app de novo, vamos conferir o tamanho se ficou ok. Olha só que bacana, o tamanho já está bem melhor do que estava.

[03:59] Então com isso nós conseguimos alterar o tamanho da fonte. A última coisa que eu vou alterar é o estilo da exibição da imagem. Como você pode ver, em alguns casos a imagem ficou um pouquinho distorcida. Eu vou utilizar um estilo de preenchimento, que na verdade é um zoom que é aplicado na imagem para que ela fique um pouco mais agradável.

[04:23] Olha só que bacana, aqui nós temos algumas coisas já na imagem, como por exemplo "resizable", o "frame" e nós vamos colocar agora um tipo de exibição, que chamamos "aspectRatio" aqui. Eu vou colocar um, que se chama ".fill", que é preenchimento. Então eu vou pedir para imagem ampliar e preencher o tamanho da célula, para que ela fique um pouquinho maior e não tão distorcida.

[04:53] Só que vamos ver que tem um probleminha, olha só. Olha o tamanho que a imagem ficou, eu ampliei ela para que ela utilizasse o tamanho de preenchimento e eu vou pedir agora para recortar essa imagem no tamanho disponível que nós temos. Como ficou aqui bem grande, eu vou pedir para que ela recorte, assim conseguimos ter um tamanho mais agradável.

[05:15] Para recortar a imagem, eu vou dar um ".clipped", então ele vai recortar baseado no tamanho disponível. Vamos rodar aqui o projeto novamente. Olha só: agora nós temos a imagem com uma visualização bem mais agradável, não está mais distorcida e através do clipped nós conseguimos cortar então a imagem de acordo com o tamanho que nós setamos.

[05:40] Então, na verdade, aqui nós estamos dando meio que um zoom na imagem e aqui embaixo nós estamos cortando ela no espaço disponível. Agora nos finalizamos então o layout do nosso aplicativo para iPad, eu vou rodar mais uma vez aqui no iPhone para conferirmos se não quebrou nenhuma configuração. Lembra que sempre é uma boa prática nós rodarmos nos dois tipos de dispositivos, de preferência até em outros.

[06:09] Por mais que a pré-visualização nos ajude na hora da construção do layout, é importante simularmos e, se for possível, até rodar em um device físico para conferirmos se está tudo de acordo com as nossas configurações. Então olha só que bacana: eu tenho um layout que ele se enquadra tanto no iPhone quanto no iPad.

[06:29] A sacada dessa aula foi mostrar para vocês que é possível criar variáveis de ambiente. Nesse caso utilizamos essa "horizontalSizeClass", que é a verificação horizontal para descobrir se o que estávamos trabalhando era um iPhone ou um iPad. Mas também nós temos aqui outros tipos: nós temos o "verticalSizeClass", para conseguir fazer outros tipos de validações.

[06:54] Com isso, fechamos a quarta aula e o que falta agora para fecharmos o projeto é aprendermos a trabalhar com navegação de telas. Então nós criamos aqui uma tela estática e quando eu clicar, por exemplo, em um destino, eu vou no mapa essa localização, com isso aprendemos então a criar a navegação. Eu vejo vocês no próximo vídeo.

@@06
Consolidando seu conhecimento

Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Caso já tenha feito, excelente. Se ainda não, é importante que você implemente o que foi visto no vídeo para poder continuar com o próximo capítulo que tem como pré-requisito todo código aqui escrito. Se por acaso você já domina esta parte, em cada capítulo você terá a opção de baixar o projeto feito até aquele ponto. Você encontrará o link para download na próxima explicação do capítulo.

Opinião do instrutor

O gabarito deste exercício é o passo a passo demonstrado no vídeo. Tenha certeza de que tudo está certo antes de continuar. Ficou com dúvida? Recorra ao nosso fórum, não perca tempo! :)

@@07
Download do projeto

Dica: Clicando no link a seguir, você consegue fazer o download do projeto.

https://github.com/alura-cursos/alura-viagens-swiftui/archive/30329a1e04749f97269f905de90d1c87a2af5267.zip

@@08
O que aprendemos?

Nesse capítulo, aprendemos a:
trabalhar com size classes;
utilizar variáveis de ambiente @Environment;
criar validações para customizar o tamanho e posição dos elementos.