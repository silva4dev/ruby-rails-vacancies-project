# Teste: Desenvolvedor Ruby on Rails Pleno

Olá meu amigo desenvolvedor, esse é um teste básico para avaliar seus conhecimentos de Ruby on Rails. No repositório, temos o arquivo `default.min.css` que já contem o Bootstrap 5 com o tema pré-configurado. Também está o arquivo SVG do logotipo branco para ser usado na navbar superior. Não anexei nenhum arquivo JavaScript pois o uso de bibliotecas fica a critério do candidato (pode usar CDN caso faça uso de libs JS).

OBS: como o arquivo CSS já tem o tema Sinaxys embutido, o que exige certa familiaridade, não tem problema se fizer algum CSS hard-coded usando o parâmetro style... :) 

Boa sorte!

## Projeto: Aplicação às vagas Sinaxys

Nesse projeto, vamos fazer um mini-app de vagas de emprego. O usuário poderá se cadastrar na plataforma com dados básicos e, caso esteja logado, se candidatar à uma vaga.

* **Navbar:** Use a classe `bg-primary-dark` para pintar o fundo da navbar de roxo escuro... :)
* **Tela inicial:** use o endpoint `GET https://prod.api.sinaxys.com/v2/jobs` para obter a listagem de vagas. Dica: usamos a gem [RestClient](https://github.com/rest-client/rest-client) pra trabalhar com APIs. No mundo real é lógico que usamos o Active Record acessando o PostgreSQL, mas aqui usaremos API REST para não termos que lidar com schemas e arquivos seeds.
  * O parâmetro `id` é a chave primária desse registro.
  * Cada vaga fica em um `.card` individual.
  * O título da página é simplesmente uma tag `<h1>`.
  * Na imagem, os dados são de exemplo, devendo o candidato usar os dados retornados pela API.

![Screenshot 2022-11-22 at 18-30-51 Sinaxys](https://user-images.githubusercontent.com/3427344/203425975-445835c3-437f-4c11-afe2-0f47312fc252.png)

* **Detalhe da vaga:** Ao clicar na vaga, a tela de detalhes usa o endpoint `GET https://prod.api.sinaxys.com/v2/jobs/[id]` — naturalmente, o [id] é o ID da vaga clicada.
  * Essa tela terá um botão "Me candidatar" (que usa as classes `btn` e `btn-primary` do Bootstrap), que só funcionará se o usuário estiver logado (quando deslogado, o botão pode estar disabled ou exibir uma mensagem, fica a seu critério!).
  * O título da página, com o nome da especialidade médica, é simplesmente uma tag `<h1>`.
  * Com o usuário logado, se ele clicar em "Me candidatar", será feito o registro em uma tabela simples associando o ID da vaga com o ID do usuário.
  * Se o usuário já tiver se candidatado, retornar um erro: _"Sua candidatura para essa vaga já foi enviada"_.

![Screenshot 2022-11-22 at 18-38-37 Sinaxys](https://user-images.githubusercontent.com/3427344/203426764-8109149e-f2aa-4750-80e0-c18e541a3f38.png)

* **Cadastro:** O usuário deverá se cadastrar na plataforma fornecendo Nome, E-mail, Senha, Confirmação de Senha (campos obrigatórios), e um textarea de preenchimento opcional para Experiência Profissional.
  * Nessa etapa, pode usar o `has_secure_password` nativo do Rails ou uma biblioteca.
  * Não esqueça das validações necessárias.
  * A interface gráfica do formulário básico fica a critério do candidato (dica: use as classes padrão do Bootstrap, como `.form-control`).
* **Login:** Deverá ter uma tela para o usuário efetuar o login com seu e-mail e senha.
  * A UI também fica por conta do candidato, também usando as classes padrão do Bootstrap.

## Entrega

Faça o envio do projeto em um repositório público no seu GitHub particular até a data combinada.
