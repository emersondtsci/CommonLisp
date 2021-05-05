(defstruct endereco ;declaração da estrutura "endereço" e cada um de seus campos
	cidade
	bairro
	rua
	numero
)

(defstruct (pessoa (:include endereco)) ;declaração da estrutura "pessoa" com seus campos e incluindo a estrutura endereço com seus campos, semelhante a herança em outras linguagens
	nome
	idade
	peso
	email
	telefone
)

;Solicitando ao usuário que digite suas informações
(print "Digite seu nome:")
;Armazenando as informações digitadas pelo usuário em "variáveis"
(setq nome (read-line)) ;a função "read-line", como o próprio nome sugere, lê uma linha digitada pelo usuário
(print "Digite sua idade:")
(setq idade (read))
(print "Digite seu peso:")
(setq peso (read))
(print "Digite seu email:")
(setq email (read-line))
(print "Digite seu telefone:")
(setq telefone (read-line))
(print "Digite sua cidade:")
(setq cidade (read-line))
(print "Digite seu bairro:")
(setq bairro (read-line))
(print "Digite sua rua:")
(setq rua (read-line))
(print "Digite seu numero:")
(setq numero (read-line))

(setq pessoa1 (make-pessoa ;declarando a estrutura que receberá as informações do usuário
	:nome nome ;atribuindo o valor definido pelo usuário a cada respectivo campo
	:idade idade
	:peso peso
	:email email
	:telefone telefone
	:cidade cidade
	:bairro bairro
	:rua rua
	:numero numero)
)

;Mostrando em tela todos os dados
(format t "~%DADOS~%Nome = ~s~%Idade = ~d~%Peso = ~d~%E-mail = ~s~%Telefone = ~s~%Cidade = ~s~%Bairro = ~s~%Rua = ~s~%Numero = ~d" 
(pessoa-nome pessoa1)
(pessoa-idade pessoa1)
(pessoa-peso pessoa1)
(pessoa-email pessoa1)
(pessoa-telefone pessoa1)
(pessoa-cidade pessoa1)
(pessoa-bairro pessoa1)
(pessoa-rua pessoa1)
(pessoa-numero pessoa1))

