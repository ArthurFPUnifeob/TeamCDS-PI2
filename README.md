# TeamCDS-PI2

## Descrição
O TeamCDS-PI2 é um projeto universitário desenvolvido por alunos dos cursos de Ciência da Computação e Análise e Desenvolvimento de Sistemas. Trata-se de um aplicativo desktop projetado para analisar dados de segurança e apresentá-los de forma concisa em um painel de controle. Em outras palavras, o projeto processa dados fictícios que em ideia seriam provenientes de um modelo de inteligência artificial e os exibe em um dashboard intuitivo.

## Motivação
A motivação por trás deste projeto surge da crescente importância da segurança em nossa sociedade. Diante de incidentes recentes em escolas e eventos públicos, acreditamos que a tecnologia pode desempenhar um papel crucial na mitigação desses eventos. Nosso objetivo é fornecer uma ferramenta que auxilie os profissionais de segurança a tomar decisões informadas e rápidas.

## Tecnologias Utilizadas
O projeto utiliza uma combinação de tecnologias web, incluindo HTML5, CSS3 e JavaScript. Além disso, faz uso do framework Electron para criar um aplicativo desktop multiplataforma. Detalhes sobre outras dependências específicas serão definidos posteriormente.

## Como Iniciar
Para iniciar o projeto, siga estas etapas:
    Tenha intalado e como variavel de ambiente o **git** e o **node.js**.
1. Clone o repositório para o seu ambiente local.
    ```
    git clone https://github.com/ArthurFPUnifeob/TeamCDS-PI2
    ```
2. Execute o seguinte comando para instalar as dependências do Node.js:
   ```
   npm install
   ```
3. Após a instalação das dependências, inicie o aplicativo com o seguinte comando:
   ```
   npm start
   ```

## Demonstração
[Link para o Projeto no Figma](https://www.figma.com/file/vIdcC6WqRJ0s30vFOwvb6t/Projeto-PI?type=design&node-id=0%3A1&mode=design&t=j1VbpS3FjYJj6N1F-1)


## Estrutura de Diretórios
A estrutura de diretórios do projeto é organizada da seguinte forma:

**`public`**: Esta pasta contém recursos públicos que podem ser acessados diretamente no aplicativo Electron.
  - **`assets`**: Armazene recursos estáticos usados pelo aplicativo, como imagens, ícones, etc.
  - **`pages`**: Contém arquivos HTML que representam as diferentes páginas ou interfaces do aplicativo.

- **`src`**: Nesta pasta, você encontrará o código-fonte do aplicativo.
  - **`js`**: Aqui estão os arquivos JavaScript que contêm a lógica principal do aplicativo.
  - **`style`**: Contém arquivos CSS ou pré-processadores de CSS (por exemplo, SCSS ou LESS) para estilizar o aplicativo.

- **`main.js`**: Este é o ponto de entrada principal do aplicativo Electron. Aqui, você configura e inicia o aplicativo.

- **`.gitignore`**: Este arquivo especifica quais arquivos e pastas devem ser ignorados pelo Git durante o versionamento do projeto. Geralmente, arquivos de construção, dependências e arquivos de configuração são listados aqui para evitar que sejam rastreados pelo Git.

- **`package.json`**: O arquivo `package.json` é usado para gerenciar as dependências do projeto e fornecer informações sobre o projeto, como nome, versão e scripts de construção.

- **`package-lock.json` (ou `yarn.lock`)**: Este arquivo é gerado automaticamente para travar as versões específicas das dependências do projeto. Isso garante que as mesmas versões sejam usadas em todos os lugares.

## Licença
Este projeto está disponível sem licença.

## Contribuidores
Este projeto foi desenvolvido por um grupo de estudantes da Unifeob do segundo modulo dos cursos de ciencia da computação e engenharia de software, incluindo:
- Ana
- Arthur
- Bruno
- Pedro
- Luis
- Virgilio
- Yan

Além disso, os professores Ruy, Mariangela, Marcelo, Nivaldo, Max e Renata atuam como revisores do projeto.

## Status do Projeto
O projeto está em desenvolvimento e evoluindo continuamente. Fique à vontade para contribuir ou acompanhar o progresso.
