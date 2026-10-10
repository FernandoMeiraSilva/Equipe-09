# Evasao na graduacao em Mato Grosso - respostas

Gerado por `main.py` a partir dos microdados do INEP desta pasta.
Cada resposta tem as tabelas de apoio em `analise/*.csv`.

## Como cada numero foi medido

- **Coorte (trajetoria)**: acompanha quem ingressou em 2015-2020 ate 2024.
  E a unica fonte que diz se a *pessoa* concluiu ou desistiu. Cobre so
  cursos presenciais de MT: nos arquivos do INEP as linhas de EAD vem sem UF.
- **Censo (2021-2024)**: fotografa a situacao do vinculo no ano. A evasao aqui
  e `desvinculados / vinculos do ano`, com vinculos = matriculados +
  concluintes + desvinculados + trancados + transferidos + falecidos.
  E a unica fonte que separa presencial de EAD dentro de MT.
- **Limpeza aplicada**: cabecalhos padronizados sem acento, sentinelas do INEP
  (, *, **, ***, -, --, ., N/A...) viradas em vazio, textos sem espaco
  sobrando, quantidades em inteiro, duplicatas removidas, coerencia de coorte
  conferida (ingressantes = concluintes + desistentes + permanencia + falecidos)
  e cursos pequenos fora das taxas (30 ingressantes na coorte,
  50 vinculos no Censo).
- **Comparacao dentro do grupo**: toda vez que um corte (gratuito x pago,
  cobertura de bolsa, nota do curso) podia estar medindo so a diferenca entre
  EAD e presencial, o mesmo corte foi refeito dentro da modalidade e num OLS
  com rede, modalidade, grau e ano controlados.

## Respostas

### P01 - Quantos alunos de Mato Grosso estao na graduacao?

Em 2024 Mato Grosso tinha 189.869 matriculas de graduacao em 3.890 cursos e 170 IES, com 99.532 ingressantes e 22.583 concluintes no ano. 52% das matriculas sao EAD e 75% estao na rede privada. O acompanhamento de coorte (trajetoria) cobre 784 cursos presenciais de MT.

### P02 - De quem entra na graduacao, quantos terminam?

Na coorte com historia completa (ingresso em 2015, acompanhada ate 2024), de cada 100 que entraram numa graduacao presencial em MT 39 concluiram e 60 desistiram (o restante, 1%, seguia matriculado). Em numeros absolutos: 41.918 ingressantes, 16.253 diplomas, 25.092 desistencias. Nas coortes mais novas a parcela que desiste e parecida, o que muda e o tanto que ainda nao se decidiu.

### P03 - Quais cursos apresentam mais desistencia?

Maior desistencia (taxa, somando as coortes): Segurança pública 100%; Eletrotécnica industrial 90%; Engenharia ambiental 84%; Ciências aeronáuticas 82%; Fotografia 80%. Menor: Educação indígena formação de professor 10%; Letras língua brasileira de sinais formação de professor 12%; Cinema e audiovisual 14%; Medicina 19%; Geologia 27%. Em volume, quem mais perde alunos e Direito (29.032 desistencias). E 53% de toda a desistencia acontece nos dois primeiros anos de curso.

### P04 - A maior parte da desistencia fica no presencial ou no online?

A desistencia esta concentrada no online. Em 2024, 79% dos desvinculos de MT vieram do EAD (59.331 alunos contra 15.932 no presencial), e a taxa de desvinculacao do EAD foi 31.2% contra 11.0% do presencial. Parte disso e tamanho (o EAD tem mais matriculas), mas a taxa tambem e maior, ou seja, nao e so volume.

### P05 - Qual foi o ano que mais teve desistencia? Publica x privada

Pelo Censo, o ano com mais desvinculos em MT foi 2024 (75.263 alunos) e a maior taxa foi em 2024 (22.5%). Pelas coortes presenciais, o ano de referencia com mais desistencias foi 2019 (29.486). Na comparacao de rede, a privada perde muito mais: 67% de desistencia contra 45% da publica, e conclui 31% contra 33%. A conclusao parece empatada porque na publica 23% ainda estavam cursando em 2024 (contra 2% na privada): a publica demora mais, mas perde menos gente no caminho.

### P06 - Evasao anual de 2021 a 2024: houve ano atipico?

Evasao anual de MT (desvinculados / vinculos do ano) -> 2021: 16.0%; 2022: 20.6%; 2023: 21.7%; 2024: 22.5%. A serie sobe de ponta a ponta e o pico e 2024 (22.5%, 75.263 desvinculos). O ano atipico e 2021, que fica 4.2 pontos abaixo da media do periodo (16.0% contra 20.2% de media, z = -1.45) - evasao anormalmente baixa, no rastro das medidas de excepcao da pandemia. O salto de +4.6 pontos em 2022 e a volta ao patamar normal, nao uma crise nova: de 2022 em diante a evasao cresce devagar e sem sobressalto. Ressalvas: 4 pontos sao poucos para estatistica de outlier, por isso o mesmo teste foi feito por rede e modalidade (p06_anomalias_rede_modalidade.csv); e a serie de coorte do presencial nao serve como segunda opiniao aqui, porque a cada ano ela acompanha um conjunto diferente de coortes.

### P07 - A mensalidade faz o aluno ficar por mais tempo?

Nao: pagar mensalidade nao faz o aluno ficar mais tempo - faz o contrario. Nos cursos pagos a desistencia e 66% contra 45% nos gratuitos (+22 pontos), e a conclusao e 32% contra 33%. Quem desiste de curso pago sai, em media, no ano 2.7 do curso; no gratuito, no ano 3.9. Dentro da propria rede privada, porem, cobertura maior de financiamento nao vem com menos evasao (ver p07_privada_faixa_financiamento_por_modalidade.csv): ali o que manda e a modalidade. Ressalva importante: o INEP nao publica o valor da mensalidade, e 'pago' e quase sinonimo de rede privada - com estes dados o efeito do preco nao se separa do efeito da rede e da modalidade.

### P08 - Curso com nota maior tem menor taxa de desistencia?

Sim, a nota anda junto com menos desistencia, mas explica pouco. A correlacao ponderada entre CPC continuo e desistencia e -0.18. Cursos de faixa 4-5 tem desistencia media de 52.4% contra 59.7% nos de faixa 1-2 (-7.3 pontos). Com rede, modalidade e grau controlados, cada ponto de CPC continuo muda a desistencia em -3.7 ponto percentual (r2 = 0.24, n = 2.144), ou seja, a nota ajuda mas quem explica a maior parte da evasao e o tipo de instituicao, nao a qualidade medida.

### P09 - Quem conclui sai bem no Enade 2025?

No Enade 2025, Licenciaturas: 55% dos concluintes de MT acima do corte contra 58% no resto do pais; Medicina: 64% dos concluintes de MT acima do corte contra 67% no resto do pais. Ou seja, quem chega ao diploma em MT sai no mesmo patamar dos concluintes do resto do Brasil - o gargalo de MT esta em chegar ao diploma, nao na qualidade de quem chega. Lembrando: isso e proficiencia na prova, nao empregabilidade; o dado de mercado de trabalho nao existe nestes arquivos.

### P10 - FIES e ProUni reduzem a evasao na rede privada?

Na conta bruta parece que sim: cursos privados com cobertura Alta (acima de 15%) evadem 19.5% ao ano contra 25.1% nos cursos Sem apoio (0%) (-5.6 pontos, correlacao ponderada -0.19). Mas esse resultado e composicao, nao efeito: curso privado sem FIES/ProUni em MT e, em boa parte, curso EAD, que evade muito mais por conta propria. Comparando igual com igual, o sinal desaparece - no presencial os cursos com apoio evadem +4.8 pontos (ou seja, evadem MAIS) e no EAD -2.5 pontos; com modalidade, grau e ano controlados o coeficiente fica em +1.4 ponto percentual a cada 10 pontos de cobertura (r2 = 0.22, n = 4.007), contra o esperado. Conclusao honesta: com os dados desta pasta NAO da para afirmar que FIES e ProUni reduzem a evasao. O Censo traz o curso agregado, nao o aluno, entao o bolsista nunca e comparado com o colega nao bolsista da mesma turma - e so isso responderia a pergunta. Vale registrar o contexto: a cobertura encolheu no periodo, de 8.5% das matriculas privadas em 2021 para 4.8% em 2024, e por isso a parcela de bolsistas entre concluintes nao serve de prova de retencao: quem se forma hoje entrou quando o programa era maior.

## O que os dados NAO permitem responder

- **Valor da mensalidade**: nenhum arquivo do INEP traz preco. P07 usa
  `IN_GRATUITO` (curso pago x gratuito) e a intensidade de financiamento
  como proxies, e o primeiro se confunde com privada x publica.
- **Mercado de trabalho**: o Enade mede desempenho na prova, nao emprego nem
  salario. P09 responde com o percentual de concluintes acima da nota de corte.
- **Efeito do bolsista**: o Censo publica o curso agregado, nao o aluno. Nao da
  para comparar o bolsista com o colega nao bolsista da mesma turma, que e o
  que P10 precisaria para virar resposta causal.
- **Causalidade em geral**: FIES/ProUni, nota do curso e modalidade nao foram
  sorteados entre os alunos. Os resultados sao associacoes com controles.
- **EAD por coorte em MT**: nao existe. A comparacao de coorte presencial MT
  com EAD Brasil serve so para ordem de grandeza.
