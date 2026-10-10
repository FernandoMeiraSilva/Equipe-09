# Pipeline ELT: Ingestão e Processamento dos Dados de Evasão Acadêmica do INEP

## (Fase 1) Exploração, Escolha do Banco, Camadas e Plano de Ingestão

Esta fase inicial estabelece os fundamentos estratégicos e estruturais do projeto de engenharia de dados educacionais, garantindo o alinhamento entre a volumetria dos microdados do INEP e a infraestrutura tecnológica adotada.

### 1.1 Exploração e Planejamento
* **Mapeamento de Fontes:** Identificação de bases complexas provenientes do Censo da Educação Superior, planilhas de indicadores de trajetória, conceitos Enade e dados demográficos do IBGE.
* **Automação de Downloads:** Extração programática de URLs e metadados para o download contínuo de arquivos brutos diretamente dos servidores oficiais do INEP.
* **Planejamento de Ingestão:** Definição da arquitetura e do plano de ingestão utilizando metadados estruturados em planilhas de controle e mapeamentos de colunas-chave.

### 1.2 Escolha da Tecnologia de Armazenamento (Repositório Relacional)
* **Adoção do MariaDB:** Selecionado especificamente pela sua alta eficiência e robustez na gestão de ingestão massiva de dados relacionais.

### 1.3 Arquitetura de Camadas e Processamento
* **Processamento de Alta Volumetria:** Manipulação de ficheiros compactados (`.ZIP` e `.CSV`) contendo milhões de registos do ensino superior utilizando **Python** em conjunto com a biblioteca **Pandas** para filtragem e tratamento avançado.
* **Conformidade Regulatória:** Reestruturação e anonimização de microdados para assegurar total aderência às diretrizes da **LGPD** e validação perante a **ANPD**.

---

## (Fase 2) Mapeamento, Automação e Filtragem
* Execução de scripts automatizados em Python para limpeza, padronização de textos e conversão de tipos de dados.
* Filtragem regional focada no estado de Mato Grosso (MT) e separação de coortes temporais específicas (como a coorte de ingressantes de 2015 a 2020).

## (Fase 3) Carga, Idempotência e Transformação
* Estruturação de tabelas otimizadas no MariaDB com foco em performance para consultas analíticas em larga escala.
* Integração de indicadores de desempenho (como CPC e Enade) aos dados transacionais de trajetória.

## (Fase 4) Modelagem e Disponibilização
* **Geração de Dashboards em HTML:** O modelo relacional consolidado no banco de dados alimenta páginas HTML dinâmicas e interativas.
* **Independência Tecnológica:** A solução pode ser aberta diretamente em qualquer navegador web moderno, dispensando licenças de softwares proprietários de Business Intelligence (BI).