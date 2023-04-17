import argparse
import pyttsx3

parser = argparse.ArgumentParser()
parser.add_argument("texto", help="Texto a ser fonetizado")
args = parser.parse_args()

engine = pyttsx3.init()
engine.say(args.texto)
engine.runAndWait()

