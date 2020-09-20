import os

from Crypto.PublicKey import RSA

#importer des clés à partir d'un fichier
with open('private.pem','r') as fk:
	priv = fk.read()
	fk.close()

with open('public.pem','r') as fp:
	pub = fp.read()
	fp.close()

privat = RSA.importKey(priv)
public = RSA.importKey(pub)

with open('/home/iven/Encryption/ToEncrypt/tocrypt.txt','rb') as f:
	data = f.read()
	enc_data = public.encrypt(data, 32)

pwd = os.getcwd()
#print(pwd)
f = open("/home/iven/Encryption/Encrypted/Encrypt.txt", "w")
f.write(str(enc_data))
f.close()

