# 🤖 Automação de Testes com Robot Framework - Cadastro de Colaboradores

Este projeto foi desenvolvido para automatizar o teste de cadastro de colaboradores em uma aplicação fictícia chamada **Organo**, utilizando o **Robot Framework** e o **SeleniumLibrary**.

---

## ✅ Funcionalidades

- 🧪 Teste individual com dados fixos
- 🔁 Teste em massa com `FOR` loop
- 🧼 Setup e Teardown com abertura e fechamento automático do navegador
- 📂 Estrutura modular com pastas `tests/`, `resources/` e `results/`

---

## 🗂️ Estrutura do Projeto

ROBOT_PROJECT/
├── resources/
│ ├── keywords.robot # Keywords reutilizáveis
│ ├── setup_teardown.robot # Setup/Teardown global
│ └── variables.robot # Variáveis globais
├── tests/
│ ├── formulario.robot # Casos de teste funcionais
│ └── preenchimento_incorreto.robot (exemplo)
├── results/ # Relatórios e evidências
├── log.html / report.html # Relatórios gerados
└── README.md


---

## ⚙️ Como executar

> Requisitos:
> - Python 3.x
> - Robot Framework
> - SeleniumLibrary
> - Navegador Chrome + ChromeDriver (instalado e configurado no PATH)

Instale as dependências:

```bash
pip install robotframework selenium

robot -d results tests/
Os relatórios estarão disponíveis em /results/log.html e /results/report.html.

🔁 Teste em Massa
Exemplo de dados usados no loop:

Nome	Cargo	Time
Felipe	QA	Programação
Maria	Dev	Mobile
João	Tester	Mobile
Ana	PM	Programação
Lucas	Designer	Devops

Os dados são preenchidos automaticamente via FOR e a opção correta do time é selecionada via XPath.

👨‍💻 Autor
Felipe Batista
📍 QA Tester Júnior | Em transição para o mercado internacional
🔗 LinkedIn
📂 GitHub: https://github.com/fehh48

✨ Objetivo
Este projeto faz parte do meu portfólio de estudos como QA Automation, buscando aplicar boas práticas, padronização e simular cenários reais de testes E2E.

🏆 Prints dos testes passando

📌 Observações
Esse projeto pode ser adaptado facilmente para ler dados de .csv, .json ou .xlsx

Pode ser integrado em pipelines com GitHub Actions ou GitLab CI

Foi escrito com foco em aprendizado, clareza e reaproveitamento

“Software testado é software confiável.” 🚀

yaml
Copiar
Editar

---

## ✅ O que você pode fazer agora:

1. Cria um repositório no GitHub (nome sugerido: `robotframework-organo-tests`)
2. Sobe a estrutura do projeto com:
   ```bash
   git init
   git add .
   git commit -m "Projeto de testes automatizados com Robot Framework"
   git remote add origin https://github.com/SEU_USUARIO/NOME_REPO.git
   git push -u origin main