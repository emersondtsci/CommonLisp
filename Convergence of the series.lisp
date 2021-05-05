;aqui é criada a função de entrada
(defun inp (x y)
	(format t "Digite o valor de x e y.~%")
	(setq x (read) y (read));lê os valores de entrada e armazena
	
	(if (or (< x 1) (< y 1) ) ;verifica se os valores são menores que 1
		(inp NIL NIL) ;se forem menor que 1, chama a função recursivamente
					  ;para inserir novos valores
		
		(if (and (integerp x) (integerp y));verifica se os valores são inteiros	
			(mdc x y);se sim chama a função mdc
			(inp NIL NIL);se não, chama a função de entrada
		)
	)
)
;função que calcula o algoritmo
(defun mdc (x y)
	(if (=(mod x y)0);se o resto da divisão for 0
		(format t "~%O valor ~D eh o redultado do mdc" y );esse valor ja é o mdc
		(mdc y (mod x y));se não, chama a função mdc, passando como parametro
	)					 ; x = y e y = (mod x y)
)
;aqui é chamada a função de entrada
;passando como parametro para a outra 
;função x = NIL y = NIL
(inp NIL NIL)
