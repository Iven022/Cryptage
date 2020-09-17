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

with open('crypted_file.txt','rb') as f:
	data = privat.decrypt(f.read())
	data = data.decode('utf-8')

f = open("decrypted_file.txt", "w")
f.write(str(x))
f.close()

