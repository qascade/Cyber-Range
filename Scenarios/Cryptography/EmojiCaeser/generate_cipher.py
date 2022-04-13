alphabet = {
  'c': '🤠',
  'y': '👽',
  'b': '👾',
  'e': '👀',
  'r': '🎩',
  's': '🦈',
  'i': '🌝',
  'h': '😊',
  'm': '😗',
  'l': '😨',
  'd': '😃',
  '0': '🥰',
  'j': '🤩',
  'a': '😰'
}

plain_text = "cybersheild{em0ji_caesar}"
#plain = input("Enter flag: ")
result = ""

for letter in plain_text:
    if letter in alphabet:
        result += alphabet[letter]
    else:
        result += letter

print(result)
