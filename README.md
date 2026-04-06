<div align="justify">

# *Task Manager*

![HTML](https://img.shields.io/badge/Markup-HTML5-orange?logo=html5)
![CSS](https://img.shields.io/badge/Style-CSS3-blue?logo=css3)
![JavaScript](https://img.shields.io/badge/Logic-JavaScript-yellow?logo=javascript)
![PostgreSQL](https://img.shields.io/badge/DB-PostgreSQL-blue?logo=postgresql)

---

</div>

![Página inicial do gerenciador](https://i.imgur.com/FdIszKB.png)

## Sobre o projeto

> [!NOTE]
> Este projeto é um exemplo de um gerenciador de tarefas simples, nele o usuário pode cadastrar, visualizar, editar e remover tarefas.

---

<div align="justify">

## Funcionalidades principais

### 1. Criar tarefa
Esta funcionalidade permite ao usuário cadastrar uma tarefa fornecendo:
* Título;
* Descrição.

### 2. Visualizar tarefas
Aqui o usuário poderá ver, pelo título, todas as suas tarefas cadastradas. Ele também poderá:
* Acessar a descrição da tarefa;
* Atualizá-la;
* Excluí-la.

### 3. Visualizar
Clicando neste botão, o usuário poderá:
* Visualizar o título e a descrição da tarefa.

### 4. Atualizar
Clicando neste botão, o usuário poderá:
* Atualizar o título e a descrição da tarefa.

### 5. Excluir
Clicando neste botão, o usuário poderá:
* Excluir a tarefa.

![Página de visualização do gerenciador](https://i.imgur.com/MXCZoEG.png)

---

</div>

> [!WARNING]
> Este projeto é apenas uma demonstração acadêmica e não deve ser utilizado para fins comerciais. As telas e funcionalidades são simplificadas, assim como o banco de dados e o servidor, portanto, não representam um produto final.

---

> [!IMPORTANT]
> ## Como utilizar o gerenciador
> 1. Clone este repositório em sua máquina local.
> 2. Certifique-se de ter o PostgreSQL instalado em sua máquina.
> 3. Abra um terminal e navegue até o diretório do projeto.
> 4. Restaure o banco de dados (instruções abaixo).
> 5. Inicie o servidor (instruções abaixo) e acesse a aplicação web.
>
> ### Como restaurar o banco de dados
> #### No Windows:
> 1. Abra o Prompt de Comando e navegue até o diretório `bin` do PostgreSQL, geralmente em `"C:\Program Files\PostgreSQL\<versão>\bin"`.
> 2. Crie um banco de dados vazio com o comando:
>    ```cmd
>    createdb -U <username> task_manager
>    ```
> 3. Restaure o banco de dados com o comando:
>    ```cmd
>    psql -U <username> -d task_manager -f "C:\path\to\backup\task_manager.sql"
>    ```
> 
> #### No Linux:
> 1. Abra um terminal.
> 2. Crie um banco de dados vazio com o comando:
>    ```bash
>    createdb -U <username> task_manager
>    ```
> 3. Restaure o banco de dados com o comando:
>    ```bash
>    psql -U <username> -d task_manager -f /caminho/para/task_manager.sql
>    ```

---

> [!WARNING]
> O `username` deve ser o seu nome de usuário do PostgreSQL, certifique-se de que ele tenha todas as permissões necessárias.
> Após qualquer uma dessas ações, será requisitada a senha do seu `username`, certifique-se de estar correta.

---

> [!IMPORTANT]
> ## Como ligar o servidor e acessar a página
> ### No Windows:
> 1. No Prompt de Comando, navegue até o diretório do projeto, em seguida vá para o diretório `./json`.
> 2. Execute o servidor com o comando:
>    ```cmd
>    npm start
>    ```
> 3. Abra o navegador e acesse o arquivo `index.html` no diretório do projeto. Você pode fazer isso arrastando e soltando o arquivo `index.html` na janela do navegador ou, no diretório `./html`, usando o comando:
>    ```cmd
>    start index.html
>    ```
> 
> ### No Linux:
> 1. Abra um terminal e navegue até o diretório do projeto, em seguida vá para o diretório `./json`.
> 2. Execute o servidor com o comando:
>    ```bash
>    npm start
>    ```
> 3. Abra o navegador e acesse o arquivo `index.html` no diretório do projeto. Você pode fazer isso arrastando e soltando o arquivo `index.html` na janela do navegador ou, no diretório `./html`, usando o comando:
>    ```bash
>    xdg-open index.html
>    ```

---

> [!NOTE]
> Este projeto é uma implementação simples de um gerenciador de tarefas utilizando Node.js e PostgreSQL. Ele serve como uma oportunidade de aprendizado para entender os conceitos de desenvolvimento web com JavaScript.

---

> [!WARNING]
>
> ## Licença
>
> Este projeto está sob a **Licença MIT**.

---

## Autor

**Natam Leão Ferreira**

Conclusão: **2024**

---
