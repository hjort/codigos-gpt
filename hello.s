.section .data
    msg db "Hello, World!", 10  # Define a mensagem e adiciona uma nova linha

.section .text
    .global _start

_start:
    movl $4, %eax        # Define o valor 4 em EAX para chamar a função 'write'
    movl $1, %ebx        # Define o valor 1 em EBX para indicar que a saída padrão deve ser usada
    movl $msg, %ecx      # Coloca o endereço da mensagem na variável ECX
    movl $14, %edx       # Define o tamanho da mensagem em EDX
    int $0x80            # Chama a função de sistema para imprimir a mensagem
    
    movl $1, %eax        # Define o valor 1 em EAX para chamar a função 'exit'
    xorl %ebx, %ebx      # Define o código de retorno como zero
    int $0x80            # Chama a função de sistema para sair do programa

