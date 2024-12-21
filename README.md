
# Projeto BigQuery e Looker Studio - Crimes em São Paulo em 2019 e 2020

Durante o ano de 2024 fiz parte do Programa Desenvolve do Grupo Boticário na trilha de dados e aqui se inicia o meu portifólio.

Nosso último projeto desafiador no curso após uma longa jornada foi gerar uma análise de dados de crimes ocorridos em São Paulo usando o BigQuery para consultas e o Looker para visualização e geração de relatórios, além disso foi proposto que montássemos um relatório explorando storytelling com os insights obtidos.

____________________________________________________________________________________________________________________________________________
# Sumário
1) Banco de dados
2) Ferramentas
3) Informações extraídas
4) Conclusões
____________________________________________________________________________________________________________________________________________
# 1) Banco de dados
   O banco de dados (base-crimes-sp-2019-e-2020.csv) fornecido foi um arquivo .csv trazendo dados de crimes de São Paulo nos anos de 2019 e 2020, 
   divididos por delegacias, como os distritos policiais da cidade de São Paulo, as delegacias do idoso, delegacias de atendimento ao turista, centrais de flagrante, delegacias dos aeroportos e portos, delegacias de defesa da mulher, da pessoa com deficiência, entre outros, e pelos tipos de crimes, como furtos na região,	roubo de carga,	roubos,	roubo de veiculo, furto de veiculo,	latrocínios,	homicídio doloso por acidente de trânsito,	homicídio culposo por acidente de trânsito,	homicídio culposo,	tentativa de homicídio,	lesão corporal seguida de morte,	lesão corporal dolosa,	lesão corporal culposa por acidente de trânsito, lesão corporal culposa,	estupro,	estupro de vulnerável,	roubo de veiculos e roubo a banco. 
____________________________________________________________________________________________________________________________________________
# 2) Ferramentas

Para o desenvolvimento desse projeto foi utilizado SQL (BigQuery) para consultas complexas e manipulação dos dados e extração de informações específicas e o Looker Studio para gerar a visualização dos dados.

✅[Querie SQL](https://github.com/ninaleao/bigquerylooker/tree/main/SQL%20Querie)

✅[Painel Looker Studio](https://lookerstudio.google.com/u/0/reporting/753f3cf8-9e79-43e9-a739-2e339f82ed46/page/p_ou6vfs3vjd)
____________________________________________________________________________________________________________________________________________
# 3) Informações extraídas

O painel de Crimes no Looker Studio foi divido em quatro partes, sendo elas os indicadores gerais das delegacias, indicadores gerais de crimes, indicadores de furtos e indicadores de roubos, para facilitar as visualizações para o usuário.

Inicialmente, já é possível ver que em 2019 e 2020 foram registrados 849.943 crimes na cidade de São Paulo, sendo a DP de Campos Elísios, a DP da Sé e a DP dos Jardins as que registraram mais crimes.
De 2019 para 2020 houve uma redução de 476,2 mil crimes para 373,8 mil, em torno de 21,5%. Mas o que houve nessa época para haver essa redução? 

![Número total de crimes](https://github.com/user-attachments/assets/e464645c-bbf4-4a40-87a0-b8881a9dc449)

![Número total de crimes por delegacia](https://github.com/user-attachments/assets/10f8730e-33cc-4c13-90ab-56a3e7207a13)

![Número total de crimes por ano](https://github.com/user-attachments/assets/e9302a9e-a44f-4a70-8038-4515ccbcd71e)

Quando a gente analisa o cenário da época, temos dois momentos extremamente importantes, apesar de existir diversas possibilidades para essa variação ter acontecido. O primeiro deles é que o ano de 2020 ficou marcado pela pandemia de covid-19 com vários períodos longos de isolamento, com uma quantidade menor de pessoas circulando pelas ruas e o comércio fechado, fato que com certeza impactou na redução das ocorrências criminais. Nesse mesmo ano, tivemos as mudanças políticas devido às eleições municipais e estaduais, por ser um ano de campanha, possivelmente também contribuiu para essa redução.

Por sua vez, quando analisamos os tipos de crimes em cada ano, é notável que os furtos por região e os roubos se destacam ao representarem mais de 75% de todos os tipos de crimes registrados nos anos de 2019 e 2020, seguidos dos furtos de veículo e da lesão corporal dolosa.
Entre um ano e outro, tivemos uma redução de 226.566 furtos registrados para 164.444 e tivemos a redução de 137.369 roubos registrados para 124.552. A redução de furtos correspondeu a 27,4%, enquanto que a redução dos roubos foi de apenas 9,3%, e mais uma vez pensando nos longos períodos de isolamento social acarretados pela pandemia de covid-19, é perceptível a relação entre os crimes e o período de transição entre esses dois anos.

![Tipo e quantidade de crimes registrados por ano](https://github.com/user-attachments/assets/db5bbe13-ffe8-4379-8fcf-cec474f640d4)

Entre as regiões com mais furtos nesse período estão Campos Elísios, Sé, Jardins e Pari e entre 2019 e 2020 os Jardins tiveram a maior redução de furtos entre elas. 

![Quantidade de furtos por delegacia](https://github.com/user-attachments/assets/256275d5-8cc7-46ed-9935-2abbc6e4d2e6)

Já entre as regiões com mais roubos nesse período estão Campos Elísios, Capão Redondo, Campo Limpo e Sé.
 
![Quantidade de roubos por delegacia](https://github.com/user-attachments/assets/d538d29f-d217-4307-be40-17e213975bae)

Quando buscamos entender a cidade de São Paulo geograficamente, vemos que Campos Elísios e Sé ficam na região do centro histórico onde também está a cracolândia. A cracolândia é conhecida pelo intenso consumo de crack e pela presença de usuários de drogas, um problema social e uma área extremamente vulnerável, o que explica os altos números de registro de crimes nessas regiões.

____________________________________________________________________________________________________________________________________________
# 4) Conclusões

Após analisar todos os dados, observa-se que o registro de ocorrência de crimes em São Paulo reduziu entre os anos de 2019 e 2020 e isso se deu, principalmente, pela pandemia de covid-19, cujo período de isolamento fez com que o número de pessoas nas ruas diminuísse, os comércios se mantivessem fechados e, consequentemente, as taxas de criminalidade fossem menores, e por 2020 ter sido um ano de campanha eleitoral, em que vários projetos foram realizados, uma vez que teve eleição municipal e estadual.

Quando analisa-se os dados pela perspectiva da localização geográfica das delegacias com maiores números de registros de crimes, nos deparamos com um grande problema social, onde as regiões mais atingidas pelos roubos e furtos fazem parte da área central histórica de São Paulo e estão diretamente ligados a cracolândia, um caso complexo que envolve questões sociais, de saúde pública e segurança, mas que devido a problemas como a dependência química em grande parte de sua população traduzem a quantidade de furtos e roubos no entorno.












