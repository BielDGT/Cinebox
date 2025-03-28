<?php
require './classes/Consultar.php';
require './classes/Generos.php';

include './includes/header.php';

$idPage = $_GET['id'];

$filmes = new Filmes();
$dados = $filmes -> exibirListaFilmes();

$generos = new Generos();
$dadosGeneros = $generos-> consultarGeneroByIdFilme($idPage);


if (isset($_GET['id']) && !empty($_GET['id'])) {

    include './includes/filmes_detalhe.php';
} else {
    header('location:index.php');
}

include_once './includes/footer.php';
