flag = bytes('cybersheild{keep_it_on_repeat}'.encode('utf-8'))
key =  bytes('goatgoatgoatgoatgoagoatgoatgoa'.encode('utf-8'))
result = ''

for i in range(len(flag)):
    result += chr(flag[i] ^ key[i])

print(bytes(result.encode('utf-8')).hex())
print(bytes(result.encode('utf-8')))

cipher = bytes(result.encode('utf-8'))
plain = ''

for i in range(len(cipher)):
    plain += chr(cipher[i] ^ key[i])

print()
print(bytes(plain.encode('utf-8')))
