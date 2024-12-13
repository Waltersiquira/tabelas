<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/style.css">
    <title>Gêneros</title>
</head>
<body>
    <?php require_once 'includes/estudonauta.php' ?>
    <table>
        <tr><th>gênero</th></tr>
        <?php 
        $busca = $en->query('select * from generos order by genero');
        if (!$busca){
            echo 'erro';
        } else {
            if ($busca->num_rows == 0){
                echo 'erro';
            } else {
                while ($reg=$busca->fetch_object()){
                    echo "<tr><td>$reg->genero</td></tr>";
                }
            }
        }
        ?>
    </table>
    <a href="p3.php" style="text-decoration: none;">ver tabela de produtoras</a>
    <?php $en->close() ?>
</body>
</html>