<?php
$dsn = 'mysql:dbname=db_cinebox;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$select = "SELECT * FROM tb_filmes";

$resultado = $banco->query($select)->fetchAll();

// echo '<pre>'; //pre serve para organizar
// var_dump($resultado); //ele faz um debug das informações
?>

<?php foreach ($resultado as $linha) { ?>

    <div class="col-3">
        <figure>
            <img src="./Assets/img/poster/<?= $linha['poster'] ?>" alt="Poster1" class="foto_produto">
            <figcaption>
                <h4><?= $linha['nome'] ?></h4>
                <span class="preco">R$<?= $linha['valor_ingresso'] ?></span>
                <p class="descricao"><?= $linha['descricao'] ?></p>
            </figcaption>
            <span class="genero">
                <label style="background-color: #070373;">Fantasia</label>
                <label style="background-color: #580259;">Drama</label>
                <label style="background-color: #d966ba;">Ficção</label>
            </span>
        </figure>
    </div>

<?php } ?>