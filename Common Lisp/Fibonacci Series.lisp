(setq val1 1) ;valor do primeiro elemento da sequência
(setq val2 1) ;valor do segundo elemento da sequência
(setq soma 0) ;refere-se a soma dos valores anteriores e corresponde ao número posterior na sequência
(setq somaTot 1) ;refere-se a soma total dos elementos e inicia com esse valor, pois corresponde ao primeiro elemento da lista que tem valor 1 e já tem sua condição no "else" da função if
(setq num (read)) ;é o número lido pelo usuário

(defun fibonacci (num) ;início da função
	(if (> num 1) ;testa se o número digitado pelo usuário é maior que 1, pois este corresponde ao elemento inicial da lista
		(loop ;é o laço que cria a lista, verifica se o valor seguinte na sequência (soma) ultrapassa o valor dado pelo usuário
			(setq somaTot (+ somaTot val2)) ;soma os valores da sequência
			(setq soma (+ val1 val2)) ;soma os dois últimos valores para formar o próximo valor da sequência
			(setq val1 val2) ;"itera" a penúltima "variável"
			(setq val2 soma) ;"itera" a última "variável"
			(when (> soma num) (return (format t "Soma = ~d" somaTot))) ;representa o retorno da função, pois quando o valor soma excede o número dado pelo usuário é o fim da função "fibonacci"
		)
		(format t "Soma = ~d" num) ;é a condição "else" da função if, ou seja, é a execução caso o valor digitado pelo usuário não seja maior que 1
	)
)

(fibonacci num)