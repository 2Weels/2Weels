TRABALHO 01: 2Wheels

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
   
   De um usuario deseja-se saber: sexo,cpf,estado civil,nome,endereço,plano que ele aderiu;
   De um plano deseja-se saber: Nome, descreção e valor;
   De uma base deseja-se saber: endereço;
   De uma Bicileta desej-se saber: Onde ela se encontra, numero de gps e data de manuntenção
   
   
4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)

Criado mockups  básicos com as telas de cadastro no site, e também a interface do Parkimetro:
Link -> https://drive.google.com/file/d/0B22ymfBw5MWbNHpMZW42OEktalE/view?usp=sharing

4.1 TABELA DE DADOS DO SISTEMA:

A) Link Para a Tabela contendo todos as tabelas -> 
View->  https://docs.google.com/spreadsheets/d/1Tv4MvbGYMJYsg7A18FsJ11nOlTepJXGwq3OGKQzNNQA/edit?usp=sharing
Git-> https://github.com/2Weels/2Wheels/blob/master/tabelas%20detalhadas.ods

B) Link Para as Tabelas com conteudo separado ->     
View-> https://docs.google.com/spreadsheets/d/1ckgzBtnwG87dPVS5TfWTvOgr7Q7qvQbskPvVsCEe0kw/edit?usp=sharing
Git-> https://github.com/2Weels/2Wheels/blob/master/tabelas%20detalhadas.ods

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

https://github.com/2Weels/2Weels/blob/master/BR_modelo.pdf

5.1 Validação do Modelo Conceitual

[Grupo01]: [Nomes dos que participaram na avaliação]
[Grupo02]: [Nomes dos que participaram na avaliação]
5.2 DECISÕES DE PROJETO

ID: Todas tabelas serão indexadas por um campo id, que cresce sequencialmente. O objetivo é tonar o sistema mais dinâmico;

Data: Os campos de Data do Aluguel serão um tipo composto que armazenará data e hora, pois
o aluguel é feito em horas e não em dias, criado a necessidade de se saber
o dia juntamente com a hora.

Endereco: Por padrão os campos de endereco são compostos e unitários, pois
o sistema precisa de apenas um endereço relacionado a uma entidade

5.3 DESCRIÇÃO DOS DADOS
USUARIO: Tabela que armazenará no sistema os dados de todos usuarios que
quiserem entrar para a 2Weels.<br/>
[id_usuario]:Numero unico que indentifica um usuario<br/>
[nome]: Campo que armazena os nomes dos clientes<br/>
[cpf]: campo responsavel por validar a inclusao de um usuario<br/>
[data_nascimento]: Campo que indenficará a idade do usuário<br/>
[endereco]:Campo que indentificará o local residente dos usuários<br/>
[num_tel]:Campo que registra um meio de contato com o cliente<br/>
[num_cartao]:Campo que será usado para armazenar o numero onde será pago o plano pos<br/>
[sexo]:Campo que identifica o sexo do usuario<br/>
[idade]:Campo que identifica a idade do usuario<br/>
[estado_civil]:Campo que identifica o estado civil do usuario<br/>

BICICLETAS: Tabela que armazena todo patrimorio em bicicletas da empresa. Guardando
informções técnicas e também gerenciais<br/>
[id_bicicleta]: Numero identificador unitário das bicicletas<br/>
[local_atual]:Identifica o local atual de cada bicicleta. podendo ser uma base ou<br/>
"em circulação" para indicar q a bicicleta esta sob posse de um usuário<br/>
[num_gps]:Numero identificador do gps incerido nas bicicletas<br/>
[data_manuntencao]: Como de tempos em tempos as bicicletas precisão ser recolhidas<br/>
para manuntenção precisa-se guardar a data da ultima<br/>

BASE: Tabela que identifica os locais operantes do bicicletário<br/>
[id_Base]: numero que identifica as bases<br/>
[endereco] Campo que armazena o endereço das bases<br/>

PLANO: Tabela que descreve os planos disponiveis para o usuário;<br/>
[id_plano]: numero que identifica os planos<br/>
[nome]: Nomo identificador no plano<br/>
[descrição]: Campo que descreve o o plano, contem o numero de horas<br/>
[Valor]: Campo que demonstra o valor de cada plano<br/>

FUNCIONARIO: Tabela que armazena os dados dos funcionários que prestão
serviços a empresa<br/>
[id_funcionario]: Campo com numero identificador de um funcionario<br/>
[nome]: Campo que armazena o nome dos funcionarios<br/>
[cpf]: Campo que armazena um documento do funcionário<br/>
[num_Carteira_trabalho]:Campo que armazena um documento do funcionário<br/>
[identidade]:Campo que armazena um documento do funcionário<br/>
[endereco] Campo que armazena o local residente de um funcionário<br/>
[data_nascimento]:Campo que armazena a data de nascimento e consequentemente a idade<br/>

ALUGUEL: Tabela que registrará os alugueis dos cliente<br/>
[codigo]: Campo que identifica o codigo da operação<br/>
[data_devolução] Campo que identifica a data e hora da devolução<br/>
[horas_alugadas]: Campo que representa as horas alugadas pelo cliente<br/>

DEVOLUÇÕES: Tabela que registrará as devoluções dos clientes<br/>
[codigo]: Campo que identifica o codigo da operação<br/>
[data_devolução] Campo que identifica a data e hora da devolução<br/>


6	MODELO LÓGICO<br/>
   https://github.com/2Weels/2Wheels/blob/master/MODELO-LOGICO.pdf

7	MODELO FÍSICO<br/>
   https://github.com/2Weels/2Wheels/blob/master/2Wheels_script_create.sql
    
8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS

8.1 DETALHAMENTO DAS INFORMAÇÕES<br/>
   https://github.com/2Weels/2Wheels/blob/master/inserts.sql
   
8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br/>
   https://github.com/2Weels/2Wheels/blob/master/create-inserts.sql
    
8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS<br/>
   https://github.com/2Weels/2Wheels/blob/master/drop-create-inserts.sql
   
9	TABELAS E PRINCIPAIS CONSULTAS

9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas)<br/> 

9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br/>
      1: https://github.com/2Weels/2Wheels/blob/master/where-CasadosPlanoPre.sql<br/>
      imagem: https://github.com/2Weels/2Wheels/blob/master/where-CasadosPlanoPre.png<br/>
      
      
      2: https://github.com/2Weels/2Wheels/blob/master/where-homensAdultosSolteiros.sql<br/>
      imagem:https://github.com/2Weels/2Wheels/blob/master/where-homensAdultosSolteiros.png<br/>
      
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
