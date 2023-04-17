import java.util.Scanner;

public class ValidadorCPF {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o CPF (apenas números): ");
        String cpf = scanner.nextLine();

        // verificando se o CPF possui 11 dígitos
        if (cpf.length() != 11) {
            System.out.println("CPF inválido.");
            return;
        }

        // verificando se o CPF possui apenas números
        try {
            Long.parseLong(cpf);
        } catch (NumberFormatException e) {
            System.out.println("CPF inválido.");
            return;
        }

        // calculando o primeiro dígito verificador
        int soma = 0;
        for (int i = 0, j = 10; i < 9; i++, j--) {
            soma += Character.getNumericValue(cpf.charAt(i)) * j;
        }
        int digito1 = soma % 11;
        if (digito1 < 2) {
            digito1 = 0;
        } else {
            digito1 = 11 - digito1;
        }

        // calculando o segundo dígito verificador
        soma = 0;
        for (int i = 0, j = 11; i < 10; i++, j--) {
            soma += Character.getNumericValue(cpf.charAt(i)) * j;
        }
        int digito2 = soma % 11;
        if (digito2 < 2) {
            digito2 = 0;
        } else {
            digito2 = 11 - digito2;
        }

        // verificando se os dígitos verificadores estão corretos
        if (Character.getNumericValue(cpf.charAt(9)) != digito1 || Character.getNumericValue(cpf.charAt(10)) != digito2) {
            System.out.println("CPF inválido.");
        } else {
            System.out.println("CPF válido.");
        }
    }
}

