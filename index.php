<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/style.css">
    <title>Cursos</title>
</head>
<body>
<?php require_once 'includes/cadastro.php' ?>
<span>ordenar | <a href="index.php?o=nome" style="text-decoration: none;">nome</a> | <a href="index.php?o=descricao" style="text-decoration: none;">descrição</a> | <a href="index.php?o=carga" style="text-decoration: none;">carga</a> | <a href="index.php?o=totaulas" style="text-decoration: none;">total de aulas</a> | <a href="index.php?o=ano" style="text-decoration: none;">ano</a></span>
<table>
    <tr><th>nome</th><th>descrição</th><th>carga</th><th>total de aulas</th><th>ano</th></tr>
    <?php 
    $ordem = $_GET['o'] ?? 'nome';
    switch($ordem){
        case 'nome':
            $busca = $cd->query('select * from cursos order by nomecurso');
            break;
        case 'descricao':
            $busca = $cd->query('select * from cursos order by descricao');
            break;
        case 'carga':
            $busca = $cd->query('select * from cursos order by carga');
            break;
        case 'totaulas':
            $busca = $cd->query('select * from cursos order by totaulas');
            break;
        case 'ano':
            $busca = $cd->query('select * from cursos order by ano');
    }
    if (!$busca){
        echo 'erro';
    } else {
        if ($busca->num_rows == 0){
            echo 'erro';
        } else {
            while ($reg=$busca->fetch_object()){
                echo "<tr><td>$reg->nomecurso</td><td>$reg->descricao</td><td>$reg->carga</td><td>$reg->totaulas</td><td>$reg->ano</td></tr>";
            }
        }
    }
    ?>
</table>
<a href="p1.php" style="text-decoration: none;">ver tabela de gafanhotos</a>
<?php $cd->close() ?>
</body>
</html>