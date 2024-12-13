<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/style.css">
    <title>Jogos</title>
</head>
<body>
    <?php require_once 'includes/estudonauta.php' ?>
    <span>ordenar | <a href="p4.php?o=nome" style="text-decoration: none;">nome</a> | <a href="p4.php?o=descricao" style="text-decoration: none;">descrição</a> | <a href="p4.php?o=nota" style="text-decoration: none;">nota</a> | <a href="p4.php?o=genero" style="text-decoration: none;">gênero</a> | <a href="p4.php?o=produtora" style="text-decoration: none;">produtora</a></span>
    <table>
        <tr><th>nome</th><th>descrição</th><th>nota</th><th>gênero</th><th>produtora</th></tr>
        <?php 
        $ordem = $_GET['o'] ?? 'nome';
        switch($ordem){
            case 'nome':
                $busca = $en->query('select j.nome, j.descricao, j.nota, g.genero, p.produtora from jogos as j join generos as g on j.genero = g.cod join produtoras as p on j.produtora = p.cod order by j.nome');
                break;
            case 'descricao':
                $busca = $en->query('select j.nome, j.descricao, j.nota, g.genero, p.produtora from jogos as j join generos as g on j.genero = g.cod join produtoras as p on j.produtora = p.cod order by j.descricao');
                break;
            case 'nota':
                $busca = $en->query('select j.nome, j.descricao, j.nota, g.genero, p.produtora from jogos as j join generos as g on j.genero = g.cod join produtoras as p on j.produtora = p.cod order by j.nota');
                break;
            case 'genero':
                $busca = $en->query('select j.nome, j.descricao, j.nota, g.genero, p.produtora from jogos as j join generos as g on j.genero = g.cod join produtoras as p on j.produtora = p.cod order by g.genero');
                break;
            case 'produtora':
                $busca = $en->query('select j.nome, j.descricao, j.nota, g.genero, p.produtora from jogos as j join generos as g on j.genero = g.cod join produtoras as p on j.produtora = p.cod order by p.produtora');
        }
        if (!$busca){
            echo 'erro';
        } else {
            if ($busca->num_rows == 0){
                echo 'erro';
            } else {
                while ($reg=$busca->fetch_object()){
                    echo "<tr><td>$reg->nome</td><td>$reg->descricao</td><td>$reg->nota</td><td>$reg->genero</td><td>$reg->produtora</td></tr>";
                }
            }
        }
        ?>
    </table>
</body>
</html>