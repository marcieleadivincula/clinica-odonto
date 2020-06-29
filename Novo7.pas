Program Cadastro_cliente ;
{nome, data de nascimento, cpf, telefone, endereço, email, obs}

type TinfoCliente = record
       nome: string;
       dataNasci:integer;
       cpf:integer;
       telefone:integer;
       email:string;
       observacao:string;
     end;
 		 
	TlistaCliente =	array [1..100] of TinfoCliente; 
	
var
   cont:integer;	

procedure Tcadastro(var lista:TlistaCliente ; var i: integer);  
begin
     cont:=1;
     for i:= 1 to 100 do 
     begin
		 		writeln('Informe seu nome');
		 		readln(lista[i].nome);
		 		writeln('Informe sua data de nascimento');
		 		readln(lista[i].dataNasci);
		 		writeln('Informe seu cpf');
		 		readln(lista[i].cpf);
	   		writeln('Informe seu telefone');
		 		readln(lista[i].telefone);
		 		writeln('Informe seu email');
		 		readln(lista[i].email);
		 		writeln('Alguma observação ?');
		 		readln(lista[i].observacao);  
		 		cont:= cont -1 ;
		 end;
		 		
end; 
	
	   		 
Begin
    Tcadastro;
    	writeln('cont = ',cont); 
End.