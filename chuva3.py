import pygame
import random

# Inicializa o pygame
pygame.init()

# Define as dimensões da janela
width = 1358
height = 708
#width = 800
#height = 600

# Define as cores utilizadas
BLACK = (0, 0, 0)
GREEN = (0, 255, 0)

# Define a fonte utilizada
font = pygame.font.SysFont('Courier', 25)

# Define a lista de letras disponíveis
letters = [chr(i) for i in range(97, 123)]

# Define a classe que representa uma letra caindo
class Letter:
    def __init__(self, x, y):
        self.x = x
        self.y = y
        self.letter = random.choice(letters)
        self.speed = random.randint(1, 5)

    def update(self):
        self.y += self.speed
        if self.y > height:
            self.y = 0
            self.x = random.randint(0, width)
            self.speed = random.randint(1, 5)
            self.letter = random.choice(letters)

    def draw(self, screen):
        text = font.render(self.letter, True, GREEN)
        screen.blit(text, (self.x, self.y))

# Cria a janela
screen = pygame.display.set_mode((width, height))
pygame.display.set_caption("Letras caindo como chuva")

# Cria a lista de letras
letters_list = []
for i in range(100):
    x = random.randint(0, width)
    y = random.randint(0, height)
    letter = Letter(x, y)
    letters_list.append(letter)

# Loop principal do jogo
while True:
    # Processa eventos do pygame
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            quit()

    # Limpa a tela com a cor preta
    screen.fill(BLACK)

    # Atualiza e desenha as letras
    for letter in letters_list:
        letter.update()
        letter.draw(screen)

    # Atualiza a janela
    pygame.display.update()

