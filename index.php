    <?php 
    require './classse/Filmes.php';
    
    $titulo = 'CineBox - Inicio';
    include './includes/header.php' ;
    include './includes/banner.php' ;

    $filmes = new Filme();
    $dados = $filmes->listarfilmesBanco();

    echo $dados;    


    include './includes/filme_lista.php';
    include './includes/footer.php'; 
    
    ?> 

