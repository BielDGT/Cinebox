
<?php 
require './classes/Filmes.php';
require './classes/Generos.php';

$titulo = 'Cinebox - Inicio';
include './includes/header.php';
include './includes/banner.php';

$filmes = new Filmes();
$dadosFilmes = $filmes -> exibirListaFilmes(8);

$generos = new Generos();
$dadosGeneros = $generos-> consultarListaGeneros();

include './includes/filme_lista.php';

include './includes/footer.php'; 