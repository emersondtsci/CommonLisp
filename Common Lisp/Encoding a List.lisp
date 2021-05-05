;sempre que se tratar de uma "variável" quer dizer que é uma função que retorna aquele valor

(defun codificar (lista) ;declaração da função
	(setq primeiro (car lista)) ;variável que recebe sempre o primeiro elemento da lista
	(setq lista (cdr lista)) ;a lista passa a ser a antiga sem o primeiro elemento
	(setq proximo (car lista)) ;essa variável recebe o primeiro elemento da nova nova lista
	(setq cont 0) ;contador que determina os elementos que se repetem em sequência
	(setq fim 1) ;variável de critério de parada do laço "loop"
	
	(loop ;início do laço
	(if (string= primeiro proximo) ;teste para determinar se o primeiro elemento é igual ao segundo elemento da lista
		(progn ;se forem iguais...
			(setq cont (+ cont 1)) ;incrementa o contador de elementos
			(setq primeiro proximo) ;o primeiro elemento passa a ser o seu sucessor
			(setq lista (cdr lista)) ;a lista passa a ser a antiga sem o primeiro elemento
			(setq proximo (car lista)) ;essa variável recebe o primeiro elemento da nova lista
		)

		(progn ;se forem diferentes...
			(if (string/= proximo nil) ;testa se a variável "proximo" é diferente de nil, pois caso seja igual quer dizer que a lista chegou ao fim
				(progn ;se forem diferentes...
					(setq cont (+ cont 1)) ;incrementa o contador de elementos
					(format t "~d~s" cont primeiro) ;imprime na tela quantas vezes o elemento se repetiu em sequência, e também imprime o próprio elemento
					(setq cont 0) ;zera o contador para um novo elemento
;repete-se o processo feito anteriormente de a variável "primeiro" receber seu sucessor, alterar a lista e a variável "proximo" passa a ser um novo elemento 
					(setq primeiro proximo)
					(setq lista (cdr lista))
					(setq proximo (car lista))
				)
				(progn ;se forem iguais, ou seja a lista chegou ao fim...
					(setq cont (+ cont 1)) ;incrementa o contador para o elemento que está na variável "primeiro"
					(format t "~d~s" cont primeiro) ; imprime em tela o contador e o último elemento da lista
					(setq fim 0) ;critério de parada do loop
				)
			)
		)
	)
		(when (= fim 0) (return)) ;condição de parada do loop com retorno vazio
	)
)

(codificar '(a a a a b c c a a d e e e e)) ; chamada da função