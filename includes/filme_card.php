<style>
    .link_produto{
    color: black;
    text-decoration: none;

}
</style>

<div class="col-lg-<?= isset($qntd) ? $qntd : 3 ?> col-md-6 col-sm-12">
<a href="./filmes-consultar.php?id=<?=$value['id']  ?>" class="link_produto">
    <figure>
        <img src="./assets/img/poster/<?= $value['poster'] ?>"
            alt="poster de <?= $value['nome'] ?> " class="foto-produto">

        <figcaption>
            <h4><?= $value['nome'] ?></h4>
            <span class="preco">R$<?= $value['valor_ingresso'] ?></span>
            <p class="descricao"><?= $value['descricao'] ?></p>
        </figcaption>
        <span class="genero">

            <?php foreach ($generosFilmes as $value2) { ?>

                <label style="background-color: #<?= $value2['cor'] ?>;"><?= $value2['nome'] ?></label>

            <?php } ?>
        </span>

    </figure>
    </a>
</div>
