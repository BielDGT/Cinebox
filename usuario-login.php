<?php

include './includes/header.php';  


if($_SERVER["REQUEST_METHOD"] == 'POST' && !empty($_POST)){

    $usuarioFormulario = $_POST['usuario'];
    $senhaFormulario = $_POST['senha'];

    $dsn = 'mysql:dbname=db_cinebox;host=127.0.0.1';
    $user = 'root';
    $password = '';
    
    $banco = new PDO($dsn, $user, $password);

    $script = "SELECT * FROM tb_usuario WHERE usuario = '{$usuarioFormulario}' AND senha = '{$senhaFormulario}' ";

    $resultado = $banco->query($script)->fetch();

    if(!empty($resultado) && $resultado != false){

        $selectUsuario = "SELECT * FROM tb_pessoa WHERE id = {$resultado['id_pessoa']} ";
        $dadosUsuario = $banco->query($selectUsuario)->fetch();

        session_start();

        $_SESSION['id_pessoa'] = $dadosUsuario['id_pessoa'];
        $_SESSION['nome'] = $dadosUsuario['nome'];
        $_SESSION['ano_nascimento'] = $dadosUsuario['ano_nascimento'];
        $_SESSION['telefone_1'] = $dadosUsuario['telefone_1'];

        header('location:usuario.php');
    }else{
        echo'
        <script>
            alert("usuario não encontrado")
            window.location.replace("./usuario-login.php")
        </script>
        ';
    }
}

include './includes/user_login.html';

include_once './includes/footer.php';
