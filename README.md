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
   De um plano deseja-se saber: Nome, descrição e valor;
   De uma base deseja-se saber: endereço e nome;
   De uma Bicileta desej-se saber: Onde ela se encontra, numero de gps
   De um funcionario deseja-se sabe: Carteira de trabalho, Identidade, endereço, sexo, estado_civil, nome completo;
   
   
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

   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Imagens/modelo_conceitual.png)

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
PESSOA: Tabela que armazenará no sistema os dados de todas pessoas que precisam de cadastro na 2Wheels.<br/>
[id_usuario]:Numero unico que indentifica um usuario<br/>
[nome_completo]: Campo que armazena os nomes dos clientes<br/>
[cpf]: campo responsavel por validar a inclusao de um usuario<br/>
[data_nascimento]: Campo que indenficará a idade do usuário<br/>
[estado_civil]:Campo que identifica o estado civil do usuario<br/>
[sexo]:Campo que identifica o sexo do usuario<br/>

USUARIO: Tablela que herda de pessoas para especificar um usuario<br/>
[num_tel]:Campo que registra um meio de contato com o cliente<br/>
[horas)usadas]:Campo que será usado para armazenar quantidade de horas por pessoa<br/>

RESIDE: Tablea que associa um usuario a um endereço:<br/>
[FK_Pessoa_id_pessoa]:Numero identificador de uma pessoa;<br/>
[FK_Endereco_id_endereco]:Numero identificador de um endereco</br>

ENDERECO: Tabela que armazena todos endereços das entidades do sistema<br/>
[id_endereco]:Numero serial que identifica um
[rua]:Campo que armazena o nome da Rua de um endereco<br/>
[CEP]:Campo que registra um CEP de um endereco<br/>
[numero]:Campo inteiro que armazena o numero da casa de um endereço<br/>

BAIRRO:Tabela que armazena os bairros de um endereco<br/>
[id_bairro]:Numero que representa um bairro<br/>
[nome]:Campo que registra o nome do bairro<br/>
[FK_Cidade_id_cidade]:Chave estrageira para uma cidade<br/>

CIDADE:Tabela que armazena as cidades de um endereco<br/>
[id_cidade]:Numero que representa uma cidade<br/>
[nome]:Campo que registra o nome da cidade<br/>
[FK_Estado_id_estado]:Chave estrageira para um estado<br/>

ESTADO:Tabela que armazena os estados de um endereco<br/>
[id_estado]:Numero que representa um estado<br/>
[nome]:Campo que registra o nome do estado<br/>
[FK_Pais_id_pais]:Chave estrageira para um país<br/>

PAIS:Tabela que armazena os paises de um endereco<br/>
[id_pais]:Numero que representa um país<br/>
[nome]:Campo que registra o nome do país<br/>

BICICLETAS: Tabela que armazena todo patrimorio em bicicletas da empresa. Guardando
informções técnicas e também gerenciais<br/>
[id_bicicleta]: Numero identificador unitário das bicicletas<br/>
[local_atual]:Identifica o local atual de cada bicicleta. Obtido atravez de combinação de latitude e longitude<br/>
[num_gps]:Numero identificador do gps incerido nas bicicletas<br/>
[latitude]:Numero repesentante da latitude da posição atual da bicicleta<br>
[longitude]:Numero repesentante da longitude da posição atual da bicicleta<br>


BASE: Tabela que identifica os locais operantes do bicicletário<br/>
[id_Base]: numero que identifica as bases<br/>
[nome] Campo que armazena o nome das bases<br/>

ALOCADA: Tablea que associa uma base a um endereço:<br/>
[FK_Base_id_base]:Numero identificador de uma base;<br/>
[FK_Endereco_id_endereco]:Numero identificador de um endereco</br>

PLANO: Tabela que descreve os planos disponiveis para o usuário;<br/>
[id_plano]: numero que identifica os planos<br/>
[nome]: Nomo identificador no plano<br/>
[descrição]: Campo que descreve o o plano, contem o numero de horas<br/>
[Valor]: Campo que demonstra o valor de cada plano<br/>

FUNCIONARIO: Tabela que armazena os dados dos funcionários que prestão
serviços a empresa<br/>
[id_funcionario]: Campo com numero identificador de um funcionario<br/>
[num_Carteira_trabalho]:Campo que armazena um documento do funcionário<br/>
[identidade]:Campo que armazena um documento do funcionário<br/>

ALUGUEL: Tabela que registrará os alugueis dos cliente<br/>
[codigo]: Campo que identifica o codigo da operação<br/>
[hora_aluguel]:Campo que registra a hora de um aluguel<br/>
[data_aluguel]:Campo que identifica a data do aluguel<br/>
[hora_devolucao]:Campo que registra a hora de uma devolução<br/>
[data_devolução]:Campo que identifica a data da devolução<br/>
[horas_alugadas]: Campo que representa as horas alugadas pelo cliente<br/>
[valor_pago]:Campo que registra o valor pago pelos clientes no algueul<br/>
[status]:Campo de estado de um Aluguel: "Concluido","Circulando","Atrasado"<br/>
[FK_Pessoa_id_pessoa]:Campo que representa a pessoa que realizou o aluguel<br/>
[FK_Bicicleta_id_bicicleta]:Campo que representa a bicicleta alugada<br/>

6	MODELO LÓGICO<br/>
    ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Imagens/modelo_logico.png)

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
   PESSOAS:<br/>
   
   <b>SELECT * FROM pessoa</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_pessoas.png)<br/>
   
   USUARIOS:<br/>
   
   <b>SELECT * FROM usuario</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_usuarios.png)<br/>
   
   FUNCIONÁRIOS:<br/>
   
   <b>SELECT * FROM funcionario</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_funcionarios.png)<br/>
   
   PLANOS:<br/>
   
   <b>SELECT * FROM plano</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_planos.png)<br/>
   
   BICICLETAS:<br/>
   
   <b>SELECT * FROM bicicleta</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_bicicletas.png)<br/>
   
   BASES:<br/>
   
   <b>SELECT * FROM base</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_bases.png)<br/>
   
   ALUGUEL:<br/>
   
   <b>SELECT * FROM aluguel</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_aluguel.png)<br/>
   
   ENDERECOS:<br/>
   
   <b>SELECT * FROM endereco</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_enderecos.png)<br/>
   
   BAIRRO:<br/>
   
   <b>SELECT * FROM bairro</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_bairros.png)<br/>
   
   CIDADE:<br/>
   
   <b>SELECT * FROM cidade</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_cidade.png)<br/>
   
   ESTADOS:<br/>
   
   <b>SELECT * FROM estado</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_estado.png)<br/>
   
   PAIS:<br/>
   
   <b>SELECT * FROM pais</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_pais.png)<br/>
   
   RESIDE:<br/>
   
   <b>SELECT * FROM reside</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_reside.png)<br/>
   
   ALOCADA:<br/>
   
   <b>SELECT * FROM alocada</b></br>
   ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectAll/consulta_all_alocada.png)<br/>
   

9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br/>
      1: Usuarios que estão no Plano Pre:</br>
      <b>SELECT  * FROM usuario WHERE fk_plano_id_plano = 5 </b></br>
      ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectWhere/consulta_where_plano4.png)<br/>
      </br>2:Bicicletas ques estão na base Verão:</br>
      <b>SELECT  * FROM bicicleta WHERE local_Atual = 'Verão' </b></br>
      ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectWhere/consulta_where_baseVerao.png)<br/>
      </br>3:Aluguel de bicicleta com status concluido:</br>
      <b>SELECT  * FROM aluguel WHERE status = 'concluido'</b></br>
      ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectWhere/consulta_where_aluguelConcluido.png)<br/>
      </br>4:Pessoas do sexo feminino cadastradas:</br>
      <b>SELECT  * FROM pessoa WHERE sexo = 'F'<b/><br/>
      ![Alt text](https://github.com/2Weels/2Wheels/blob/master/Scritpts/SelectWhere/consulta_where_pessoasMulheres.png)<br/>

9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)

 a) Criar no mínimo 2 com operadores lógicos
 1:https://github.com/2Weels/2Wheels/blob/master/select_casado_plano4_menor30.sql
 ![Alt_text](https://github.com/2Weels/2Wheels/blob/master/select_casado_plano4_menor30.png)
 2:https://github.com/2Weels/2Wheels/blob/master/where-logico-2.sql
 ![Alt_text](https://github.com/2Weels/2Wheels/blob/master/where-logico-2.png)
 
 b) Criar no mínimo 2 com operadores aritméticos
 1:https://github.com/2Weels/2Wheels/blob/master/where-logico-1.sql
 ![Alt_text](https://github.com/2Weels/2Wheels/blob/master/where-logico-1.png)
 2:https://github.com/2Weels/2Wheels/blob/master/where-aritmetico-2.sql
 ![Alt_text](https://github.com/2Weels/2Wheels/blob/master/where-aritmetico-2.png)
 
 c) Criar no mínimo 2 com operação de renomear campo
 1:https://github.com/2Weels/2Wheels/blob/master/select_rename_1.sql
 ![Alt_text](https://github.com/2Weels/2Wheels/blob/master/select_rename_1.png)
 2:https://github.com/2Weels/2Wheels/blob/master/select_rename_2.sql
 ![Alt_text](https://github.com/2Weels/2Wheels/blob/master/select_rename_2.png)
 
9.4	CONSULTAS QUE USAM OPERADORES LIKE
 ![Alt text](https://github.com/2Weels/2Wheels/blob/master/like-bicicletaCirculando.png)
 ![Alt text](https://github.com/2Weels/2Wheels/blob/master/like-nomeM.png)

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
