

print('hello world')

import urllib.request

print('Beginning file download with urllib2...')

url = 'http://200.152.38.155/CNPJ/K3241.K03200Y0.D20212.EMPRECSV.zip'
urllib.request.urlretrieve(url, '/Users/nasse/Downloads/teste2')


