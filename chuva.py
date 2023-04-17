import curses
import random
import time

def main(stdscr):
    # Configuração da janela de terminal
    curses.curs_set(0)
    curses.init_pair(1, curses.COLOR_GREEN, curses.COLOR_BLACK)
    stdscr.bkgd(' ', curses.color_pair(1))
    stdscr.refresh()

    # Configuração de caracteres e animação
    chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()-=_+[]{};:,.<>/?"
    max_y, max_x = stdscr.getmaxyx()
    y = 0

    while True:
        x = random.randint(0, max_x-1)
        char = random.choice(chars)
        stdscr.addch(y, x, char, curses.color_pair(1))
        y += 1

        if y >= max_y:
            y = 0

        stdscr.refresh()
        time.sleep(0.05)

curses.wrapper(main)

