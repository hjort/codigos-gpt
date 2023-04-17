from googletrans import Translator

texto = "Olá, tudo bem?"
tradutor = Translator()
resultado = tradutor.translate(texto, src='pt', dest='sv')

print(resultado.origin)
print(resultado.text)

