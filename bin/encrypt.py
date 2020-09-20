from cryptography.fernet import Fernet
import os

file = open('key.key','rb')
key = file.read()
file.close	

with open('/home/iven/src/Cryptage/ToEncrypt/tocrypt.txt','rb') as f:
	data = f.read()

fernet = Fernet(key)
encrypted = fernet.encrypt(data)
f.close()

with open('/home/iven/src/Cryptage/Encrypted/Encrypt.txt','wb') as f:
	f.write(encrypted)
f.close()
