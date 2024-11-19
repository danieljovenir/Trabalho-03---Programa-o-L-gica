# Projeto de Linguagem de Programação e Paradigmas

## Desenvolvido por: Daniel Jovenir Espindola

### Módulos Implementados:
- **Módulo 1: Diagnóstico Médico**
- **Módulo 2: Análise de Problemas de Veículos**
- **Módulo 3: Recomendação de Livros**
- **Módulo 4: Análise de Investigação Criminal**
- **Módulo 5: Treinos de Academia**
- **Módulo 6: Análise Criminal**

---

## Descrição do Projeto

Este repositório contém os códigos desenvolvidos para a disciplina de **Linguagem de Programação e Paradigmas**, onde foram implementados diversos módulos de sistemas especialistas utilizando diferentes paradigmas de programação. O objetivo é demonstrar o uso de conceitos de **Programação Lógica**, **Programação Funcional**, **Programação Imperativa** e **Paradigmas de Programação** em situações do cotidiano.

Cada módulo tem uma funcionalidade distinta, com interações com o usuário para coletar informações e realizar diagnósticos ou recomendações baseados em uma base de conhecimento fornecida.

---

## Módulos

### Módulo 1: Diagnóstico Médico
Este módulo realiza um diagnóstico médico baseado em sintomas fornecidos pelo usuário. A base de conhecimento foi criada utilizando **Prolog**, com regras para determinar doenças baseadas na combinação de sintomas.

**Sintomas Disponíveis**:
- Febre
- Dor de cabeça
- Tosse
- Dor de garganta
- Dor muscular
- Cansaço
- Nausea
- Falta de ar

**Doenças Diagnosticadas**:
- Gripe
- Infecção Viral
- Enxaqueca
- COVID-19

**Como executar**:
1. Carregue o arquivo `diagnostico_medico.pl` no SWI-Prolog.
2. Digite `diagnostico.` para iniciar o diagnóstico com base nos sintomas.

### Módulo 2: Análise de Problemas de Veículos
Neste módulo, o usuário responde a perguntas sobre o comportamento de seu veículo, e o sistema especialista sugere possíveis problemas que o veículo pode estar apresentando. Utiliza o paradigma de **Programação Lógica**.

**Problemas Possíveis**:
- Problema com o motor
- Problema com o sistema de combustível
- Problema com a suspensão

**Como executar**:
1. Carregue o arquivo `analise_veiculos.pl` no SWI-Prolog.
2. Digite `analise.` para iniciar a análise.

### Módulo 3: Recomendação de Livros
Este módulo sugere livros para o usuário com base nos seus gostos e interesses. O sistema faz perguntas sobre gêneros literários e interesses, e faz recomendações utilizando uma base de conhecimento. Exemplos de livros recomendados:
- "1984" (Ficção, Política)
- "Sapiens" (História, Ciência)
- "O Pequeno Príncipe" (Ficção, Educação)
- "Mindset" (Autoconhecimento, Crescimento Pessoal)

**Como executar**:
1. Carregue o arquivo `recomendacao_livros.pl` no SWI-Prolog.
2. Digite `recomendacao_livros.` para iniciar a recomendação de livros.

### Módulo 4: Análise de Investigação Criminal
Este módulo ajuda na investigação de um crime, com base em evidências coletadas pelo usuário. Ele sugere possíveis suspeitos e teorias do crime, dependendo das evidências fornecidas, como impressão digital, motivo financeiro, testemunhas, etc.

**Evidências Consideradas**:
- Impressão digital
- Motivo financeiro
- Testemunha
- Relação íntima

**Como executar**:
1. Carregue o arquivo `analise_investigacao.pl` no SWI-Prolog.
2. Digite `investigacao.` para iniciar a investigação criminal.

### Módulo 5: Treinos de Academia
Este módulo sugere treinos para o usuário com base no seu objetivo (ganho de massa muscular, emagrecimento, etc.). O sistema faz perguntas sobre o objetivo do usuário e sugere um treino apropriado.

**Objetivos Considerados**:
- Ganho de massa muscular
- Emagrecimento
- Condicionamento físico

**Como executar**:
1. Carregue o arquivo `treino_academia.pl` no SWI-Prolog.
2. Digite `treino_academia.` para iniciar o sistema de recomendação de treinos.

### Módulo 6: Análise Criminal
Este módulo sugere possíveis teorias sobre o crime com base em evidências e fatos fornecidos pelo usuário. Ele aplica regras lógicas para determinar a teoria mais provável.

**Teorias Consideradas**:
- Crime passional
- Crime financeiro
- Crime político

**Como executar**:
1. Carregue o arquivo `analise_criminal.pl` no SWI-Prolog.
2. Digite `analise_criminal.` para iniciar a análise do crime.

---

## Requisitos para Execução

- **SWI-Prolog**: Para rodar os módulos desenvolvidos em Prolog, você precisará ter o SWI-Prolog instalado em sua máquina. O SWI-Prolog é uma implementação de Prolog que pode ser baixada em [swi-prolog.org](https://www.swi-prolog.org/Download.html).

---

## Como Executar

### 1. Baixar o Repositório
Clone o repositório para sua máquina local:
```bash
git clone https://github.com/danieljovenir/Trabalho-03---Programa-o-L-gica
