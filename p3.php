<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/style.css">
    <title>Produtoras</title>
</head>
<body>
    <?php require_once 'includes/estudonauta.php' ?>
    <span>ordenar | <a href="p3.php?o=nome" style="text-decoration: none;">nome</a> | <a href="p3.php?o=pais" style="text-decoration: none;">pais</a> | </span>
    <table>
        <tr><th>nome</th><th>pais</th></tr>
        <?php 
        $ordem = $_GET['o'] ?? 'nome';
        switch($ordem){
            case 'nome':
                $busca = $en->query('select * from produtoras order by produtora');
                break;
            case 'pais':
                $busca = $en->query('select * from produtoras order by pais');
        }
        if (!$busca){
            echo 'erro';
        } else {
            if ($busca->num_rows == 0){
                echo 'erro';
            } else {
                while ($reg=$busca->fetch_object()){
                    echo "<tr><td>$reg->produtora</td><td>$reg->pais</td></tr>";
                }
            }
        }
        ?>
    </table>
    <a href="p4.php" style="text-decoration: none;">ver tabela de jogos</a>
    <?php $en->close() ?>
</body>
</html>