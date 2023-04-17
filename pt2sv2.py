import argparse
from googletrans import Translator

parser = argparse.ArgumentParser()
parser.add_argument("texto", help="Texto a ser traduzido")
args = parser.parse_args()

tradutor = Translator()
resultado = tradutor.translate(args.texto, src='pt', dest='sv')

print(resultado.origin)
print(resultado.text)

