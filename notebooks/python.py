

print('hello world')

import urllib.request

x ='http://200.152.38.155/CNPJ/K3241.K03200Y'       #mudar este endereco nas próximas
y='.D20312.ESTABELE.zip'
caminho=r'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab'


for i in range(10):
    url=x+str(i)+y
    print('iniciando o download do endereco: {}'.format(url))
    url = 'http://200.152.38.155/CNPJ/K3241.K03200Y0.D20312.ESTABELE.zip'
    nome=caminho+str(i)
    urllib.request.urlretrieve(url, nome)
    print('iniciando o download do endereco: {}'.format(url))

