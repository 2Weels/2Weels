TRABALHO 01: Título do Trabalho

Trabalho desenvolvido durante a disciplina de BD1

Sumário

1. COMPONENTES

Integrantes do grupo
Lucas Eduardo Sant'anna Gianordoli: gianordolilucas@gmail.com

2.INTRODUÇÃO E MOTIVAÇAO

A criação do banco de dados será realizada afim de criar suporte para a implantação de um serviço privado de aluguel de bicicletas. O maior objetivo é criar soluções sustentaveis para circulação de pessoas que circula dentro da própia cidade, com isso garantindo um menor fluxo de carros. Menos consumo de combustível, cidade menos poluída.  

3.MINI-MUNDO

   O objetivo do projeto é desenvolvimento de um banco de dados visando gestão do aluguel de bicicletas. Como o projeto estará na fase de implantação o sistema deve ser capaz de gerar dados de fluxo, com intuito de obter informações e conseguir uma melhor aceitação.
   Para o aluguel de um bicicleta o usuário precisa relaizar cadastro prévio em nosso site. Assim o cliente irá informar seus dados e escolherá um dos planos existentes. Após seu cadastro o cliente irá a uma das bases bicicletárias onde em um "parquimetro" ele entrará em sua conta com login e senha e informará o quantidade de horas que pretende alocar. 
   O projeto conta ainda com um central de monitoramento, que fica responsavel pela vigilância das bicicletas, pois caso após oito horas depois do aluguel o cliente ainda não tenha devolvido a central entrará em contatato, para solucionar eventuais problemas. E após 24 horas ela é dada como furtada, e as informações do gps da bicicleta sera enviada a policia para gerar boletim de ocorrência.
   
   Para que o sistema seja capaz de realizar essas operações precisamos explicitar como serão armazenados os dados:
   Será cadastado no sistema as bicicletas e bases. As bicicletas são compostas de um gps para monitoramento, e precisamos salvar o estado atual e historico de transação. As bicicletas serão associadas para uma base. inicialmente durante a madrugada as bicicletas serão retornadas para a sua base de origem, mas com o decorrer do projeto e implantação de mais bases isso só será necessário quando um estudo de fluxo for implementado.
   Os planos são:
   Plano A -> 10 Horas, por 18,00
   Plano B -> 20 Horas, por 30,00
   Plano C -> 40 Horas, po 52,00
   Pós -> Será necessario o cadastro de um cartão de crédito e ao final do mes sera gerado um valor de acordo com a utilização das bicicletas, quanto mais horas mais barato a hora vai ficando
   Padrão -> A hora tem preço fixo de 2,00.
   
   Um usuario pode ficar bloqueado caso ocorra um furto sem justificativa legal (BO), e caso ele aloque bicicleta e utilize tempo a mais do informado. Esse só ficará desbloqueado com o pagamento do debito, mais uma multa no valor de 8,00. Um usuário bloqueado não é capaz de fazer alocações.
   
   O papel do funcionário nos primeiros meses é cadastrar novo usuarios, já que esses estara com um tablet, e tirar possiveis duvidas. Mas com o decorrer do projeto eles serão despensados ou realocados para novas unidades 
   
4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)

Criado mockups  básicos com as telas de cadastro no site, e também a interface do Parkimetro:
Link -> https://drive.google.com/file/d/0B22ymfBw5MWbNHpMZW42OEktalE/view?usp=sharing

4.1 TABELA DE DADOS DO SISTEMA:

A) Link Para a Tabela contendo todos as tabelas -> https://docs.google.com/spreadsheets/d/1Tv4MvbGYMJYsg7A18FsJ11nOlTepJXGwq3OGKQzNNQA/edit?usp=sharing

B) Link Para as Tabelas com conteudo separado -> https://docs.google.com/spreadsheets/d/1ckgzBtnwG87dPVS5TfWTvOgr7Q7qvQbskPvVsCEe0kw/edit?usp=sharing

4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
A)
O sistema pode fazer relatórios de alocação, de funcionários, utilização das bicicletas e planos.
O objetivo dos relatórios é para ampliação do projeto, visando gerar dados para serem analisados
e conseguir adequar o projeto a população local.

B)
O sistema poderá gerar os seguintes relatórios:

1º Quantidade de usuários por planos;
2ª Locação de bike por base
3º Quantidade de horas médias
4º Principais Rotas (BSx para BSy)
5º Base com mais "sumiços"
6º Regiões com maior numero de usuários
7º Quantidade de bicicletas alocadas simuntaneamente
8º Tempo médio entre Manunteção
9º Faixa etária dos usuários
10º Faturamento por Base

5.MODELO CONCEITUAL

A) NOTACAO ENTIDADE RELACIONAMENTO 
    * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
    * O protótipo deve possui no mínimo duas relações N para N
    * o mínimo de entidades do modelo conceitual será igual a 5
Alt text

B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
C) QUALIDADE 
    Garantir que a semântica dos atributos seja clara no esquema
    Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
    e tuplas falsas
5.1 Validação do Modelo Conceitual

[Grupo01]: [Nomes dos que participaram na avaliação]
[Grupo02]: [Nomes dos que participaram na avaliação]
5.2 DECISÕES DE PROJETO

[atributo]: [descrição da decisão]

EXEMPLO:
a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
pode possuir para cada departamento mais de uma localização... 
b) justifique!
5.3 DESCRIÇÃO DOS DADOS

[objeto]: [descrição do objeto]

EXEMPLO:
CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>
6	MODELO LÓGICO

    a) inclusão do modelo lógico do banco de dados
    b) verificação de correspondencia com o modelo conceitual 
    (não serão aceitos modelos que não estejam em conformidade)
Marco de Entrega 02 em: (Data definida no cronograma)
7	MODELO FÍSICO

    a) inclusão das instruções de criacão das estruturas DDL 
    (criação de tabelas, alterações, etc..)
8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS

8.1 DETALHAMENTO DAS INFORMAÇÕES

    a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
    b) formato .SQL
8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

    a) Junção dos scripts anteriores em um único script 
    (create para tabelas e estruturas de dados + dados a serem inseridos)
    b) Criar um novo banco de dados para testar a restauracao 
    (em caso de falha na restauração o grupo não pontuará neste quesito)
    c) formato .SQL
8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS

    a) Junção dos scripts anteriores em um único script 
    (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
    b) Criar um novo banco de dados para testar a restauracao 
    (em caso de falha na restauração o grupo não pontuará neste quesito)
    c) formato .SQL
9	TABELAS E PRINCIPAIS CONSULTAS

OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) 

9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)

9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)

 a) Criar no mínimo 2 com operadores lógicos
 b) Criar no mínimo 2 com operadores aritméticos
 c) Criar no mínimo 2 com operação de renomear campo
9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) 

Marco de Entrega 03 em: (Data definida no cronograma)
9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)

9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)

    a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)

9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)

9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)

    a) Uma junção que envolva Self Join
    b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
9.10	SUBCONSULTAS (Mínimo 3)

10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)

11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS

    a) Outros grupos deverão ser capazes de restaurar o banco 
    b) executar todas as consultas presentes no trabalho
    c) executar códigos que tenham sido construídos para o trabalho 
    d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
12 DIFICULDADES ENCONTRADAS PELO GRUPO

13 TRABALHO DE MINERAÇÃO DE DADOS

    a) captura das informaçõs
    b) integração com banco de dados em desenvolvimento
    c) atualização da documentação do trabalho incluindo a mineração de dados
13 FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

14 Backup completo do banco de dados postgres

a) deve ser realizado no formato "backup" 
    (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
c) informar aqui o grupo de alunos/dupla que realizou o teste.
Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)
OBSERVAÇÕES IMPORTANTES

Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.

Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.
Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.

Link para BrModelo:
http://sis4.com/brModelo/brModelo/download.html 

Link para curso de GIT
https://www.youtube.com/curso_git
