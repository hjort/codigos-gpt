use strict;
use warnings;

print "Digite o CPF (apenas números): ";
my $cpf = <STDIN>;
chomp $cpf;

# verificando se o CPF possui 11 dígitos
if (length($cpf) != 11) {
    print "CPF inválido.\n";
    exit;
}

# verificando se o CPF possui apenas números
if ($cpf !~ /^\d+$/) {
    print "CPF inválido.\n";
    exit;
}

# calculando o primeiro dígito verificador
my $soma = 0;
for (my $i = 0, my $j = 10; $i < 9; $i++, $j--) {
    $soma += substr($cpf, $i, 1) * $j;
}
my $digito1 = $soma % 11;
if ($digito1 < 2) {
    $digito1 = 0;
} else {
    $digito1 = 11 - $digito1;
}

# calculando o segundo dígito verificador
$soma = 0;
for (my $i = 0, my $j = 11; $i < 10; $i++, $j--) {
    $soma += substr($cpf, $i, 1) * $j;
}
my $digito2 = $soma % 11;
if ($digito2 < 2) {
    $digito2 = 0;
} else {
    $digito2 = 11 - $digito2;
}

# verificando se os dígitos verificadores estão corretos
if (substr($cpf, 9, 1) != $digito1 || substr($cpf, 10, 1) != $digito2) {
    print "CPF inválido.\n";
} else {
    print "CPF válido.\n";
}

