Program Cadastro_Funcionario ;

//Armazenamento das informa��es
{NOME, DT_NASCIMENTO, CPF, CONTATO, ENDERECO, CARGO}

type TdadosFuncionario = record
				nome : string[50];
				dt_nascimento : integer;
				cpf : integer;
				contato : string[100];
				endereco : string[50];
				cargo : string[30];
				cro : integer;
				comissao : integer;
				salario : integer;
		 end;
		 
		 
	TlistaFuncionario = array [1..5] of TdadosFuncionario;

//-----------------------------

//Vari�veis Globais
var
		listaFuncionario : TlistaFuncionario;
		
//-----------------------------

//Procedimentos e Fun��es

procedure TcadastroFuncionario;
var
		i:integer;//contador
begin
      for i := 1 to 5 do  //Percorre o vetor para preenche-lo
       begin
           if (listaFuncionario[i].cpf = 0) then  //IF para n�o apagar dados j� cadastrados
           	begin
           	     writeln('Informe o nome do funcion�rio: ');
								  readln(listaFuncionario[i].nome);
								 writeln('Informe a data de nascimento do funcion�rio');
								  readln(listaFuncionario[i].dt_nascimento); 
								 writeln('Informe o CPF do funcion�rio');
								 	readln(listaFuncionario[i].cpf);
								 writeln('Informe um contato do funcion�rio');
								  readln(listaFuncionario[i].contato);
								 writeln('Informe o endere�o do funcion�rio');
								  readln(listaFuncionario[i].endereco); 
								 writeln('Informe o cargo do funcion�rio');
								  readln(listaFuncionario[i].cargo);
								 writeln('Informe o cro do funcion�rio');
								  readln(listaFuncionario[i].cro);
								 writeln('Informe a comiss�o do funcion�rio');
								  readln(listaFuncionario[i].comissao);
								 writeln('Informe o sal�rio do funcion�rio');
								  readln(listaFuncionario[i].salario);
								  
								 writeln('Cadastrado!');
								 
								 break;
           	end;
       end;
			
end;

procedure TatualizaFuncionario;
var
	i:integer; //contador
	cpfFuncionario:integer; //usado para comparar com os cpf's j� cadastrados
begin
		writeln('Digite o cpf do funcion�rio: ');
		readln(cpfFuncionario);
		
		for i := 1 to 5 do
			begin
			    if (listaFuncionario[i].cpf = cpfFuncionario) then  //compara o cpf digitado com os armazenados
			     begin
			           writeln('Informe o nome do funcion�rio: ');
								  readln(listaFuncionario[i].nome);
								 writeln('Informe a data de nascimento do funcion�rio');
								  readln(listaFuncionario[i].dt_nascimento); 
								 writeln('Informe o CPF do funcion�rio');
								 	readln(listaFuncionario[i].cpf);
								 writeln('Informe um contato do funcion�rio');
								  readln(listaFuncionario[i].contato);
								 writeln('Informe o endere�o do funcion�rio');
								  readln(listaFuncionario[i].endereco); 
								 writeln('Informe o cargo do funcion�rio');
								  readln(listaFuncionario[i].cargo);
								 writeln('Informe o cro do funcion�rio');
								  readln(listaFuncionario[i].cro);
								 writeln('Informe a comiss�o do funcion�rio');
								  readln(listaFuncionario[i].comissao);
								 writeln('Informe o sal�rio do funcion�rio');
								  readln(listaFuncionario[i].salario);
								  
								 writeln('Atualizado e Salvo!');
			     end
			    else
			     begin
			        writeln('CPF incorreto ou sem cadastro.');
			     end;
			    
					break;
			end;
		
end;

procedure TexcluirFuncionario;
var
i, cpfCliente:integer; //contador e comparador para achar o funcionario
begin
			writeln('Digite o CPF do funcion�rio a ser exclu�do: ');
			readln(cpfCliente);
			
			for i := 1 to 5 do
			 begin
			     if (listaFuncionario[i].cpf = cpfCliente) then
			      begin
			           listaFuncionario[i].nome := '';
			           listaFuncionario[i].dt_nascimento := 0;
			           listaFuncionario[i].cpf := 0;
			           listaFuncionario[i].contato := '';
			           listaFuncionario[i].endereco := '';
			           listaFuncionario[i].cargo := '';
			           listaFuncionario[i].cro := 0;
			           listaFuncionario[i].comissao := 0;
			           listaFuncionario[i].salario := 0;
			      end;
			 end;
end;

procedure TmostrarFuncionarios;
var
	i:integer; //contador
begin
		for i := 1 to 5 do
			begin
			    if (listaFuncionario[i].cpf > 0) then
			     begin
			     		 writeln(' ');
			         writeln('Nome: ', listaFuncionario[i].nome);
			         writeln('Data de Nascimento: ', listaFuncionario[i].dt_nascimento);
			         writeln('CPF: ', listaFuncionario[i].cpf);
			         writeln('Contato: ', listaFuncionario[i].contato);
			         writeln('Endere�o: ', listaFuncionario[i].endereco);
			         writeln('Cargo: ', listaFuncionario[i].cargo);
			         writeln('CRO: ', listaFuncionario[i].cro);
			         writeln('Comiss�o: ', listaFuncionario[i].comissao);
			         writeln('Sal�rio: ', listaFuncionario[i].salario);
			         writeln('________________________________________');
			     end;
			end;
end;
	


procedure menu;
var
		c:integer; //condi��o para fechar o programa
begin
		repeat
					writeln('');
					writeln('Digite 0 para sair');
					writeln('Digite 1 para cadastrar um funcion�rio');
					writeln('Digite 2 para atualizar um cadastro de funcion�rio');
					writeln('Digite 3 para excluir um cadastro de funcion�rio');
					writeln('Digite 4 para exibir os funcion�rios cadastrados');	
					
					readln(c);
						case (c) of
						 1: TcadastroFuncionario;
						 2: TatualizaFuncionario;
						 3: TexcluirFuncionario;
						 4: TmostrarFuncionarios;					 
						end;
		
		until(c = 0)
end;
//-----------------------------
Begin
     menu;
End.