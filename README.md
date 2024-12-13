
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





