serviço(Pessoa,Faculdade) :-
    livro_devido(Pessoa,Livro),
    !,
    serviço_básico(Faculdade).

serviço(Pessoa,Faculdade) :-
    serviço_geral(Faculdade).

serviço_básico(consulta).

serviço_adicional(empréstimo).
serviço_adicional(empréstimo_entre_bibliotecas).
serviço_adicional(reserva).

serviço_geral(X) :- serviço_básico(X).
serviço_geral(X) :- serviço_adicional(X).

% base de dados de clientes
cliente('Alice Barros').
cliente('Jair Medeiros').
cliente('João Pereira').
cliente('Sandro Carvalho').

livro_devido('João Pereira', livro1234).
livro_devido('Sandro Carvalho', livro2345).
