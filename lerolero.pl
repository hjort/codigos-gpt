#!/usr/bin/perl

use strict;
use warnings;

my @adjetivos = ("revolucionário", "visionário", "transformador", "empreendedor");
my @substantivos = ("negócio", "mercado", "futuro", "mundo");
my @verbos = ("impulsiona", "gera", "transforma", "revoluciona");

for (my $i = 0; $i < 5; $i++) {
    my $adjetivo = $adjetivos[rand @adjetivos];
    my $substantivo = $substantivos[rand @substantivos];
    my $verbo = $verbos[rand @verbos];
    print "O $adjetivo $substantivo $verbo a economia.\n";
}

