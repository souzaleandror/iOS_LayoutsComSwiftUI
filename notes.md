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