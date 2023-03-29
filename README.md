# TesteVerity
Para execução você vai precisar de algumas coisinhas:

Downloads:
1- ruby 
2- selenium-webdriver

Após ter realizado o download, abra a pasta com o teste dentro do terminal de sua preferência, digitar o comando:

bundle install

Após isso irá installar todas as gems necessárias do projeto.


Rodando os testes:

Para realizar todos testes:

rspec

Para realizar somente o teste da página principal

rspec --tag @teste

Para realizar o teste da página de contato:

rspec --tag @teste2
