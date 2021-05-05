;solicita o numero de parcelas da série
(format t "Digite um valor ~%")
;lê o valor do usuário e armazena em numero
(setq numero (read))
;cria a função soma = 0
(setq soma 0)
;loop para fazer o somatório
(dotimes (i numero)
	(setq soma(+ soma (/(expt -1 i) (+ 1 (* 2 i) ))))

;A linha abaixo é para caso queiramos ver o valor 
;de cada soma até o ultimo valor 
;(format t "~F~%"  (* 4 soma))
)
;apresenta o resultado final de todo o somatório * 4
(format t "~F~%"  (* 4 soma))

;essa série tem uma convergência muito lenta, e é conhecida como
;fórmula de Gregory-Leibniz