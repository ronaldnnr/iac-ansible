# Role para instalação do python para Centos 7

  Vale lembrar que quando essa role é usada precisamos explicitar a versão do python nas chamadas:
  Ex:
    Caso use o python 2.7 as chamdas devem ser feitas `python2.7`
    Caso use o python 3.x as chamdas devem ser feitas `python3.6`

  Isso acontece por conta de uma limitação do ansible que ainda não executa por padrão com qualquer versão do python setada como default no servidor destino.
