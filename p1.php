<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/style.css">
    <title>Gafanhotos</title>
</head>
<body>
    <?php require_once 'includes/cadastro.php' ?>
    <span>ordenar | <a href="p1.php?o=nome" style="text-decoration: none;">nome</a> | <a href="p1.php?o=profissao" style="text-decoration: none;">profissão</a> | <a href="p1.php?o=nascimento" style="text-decoration: none;">nascimento</a> | <a href="p1.php?o=sexo" style="text-decoration: none;">sexo</a> | <a href="p1.php?o=peso" style="text-decoration: none;">peso</a> | <a href="p1.php?o=altura" style="text-decoration: none;">altura</a> | <a href="p1.php?o=nacionalidade" style="text-decoration: none;">nacionalidade</a> | <a href="p1.php?o=cursopreferido" style="text-decoration: none;">curso preferido</a></span>
    <table>
        <tr><th>nome</th><th>profissão</th><th>nascimento</th><th>sexo</th><th>peso</th><th>altura</th><th>nacioanlidade</th><th>curso preferido</th></tr>
        <?php 
        $ordem = $_GET['o'] ?? 'nome';
        switch($ordem){
            case 'nome':
                $busca = $cd->query('select * from gafanhotos as g join cursos as c on g.cursoprefetido = c.idcurso order by g.nome');
                break;
            case 'profissao':
                $busca = $cd->query('select * from gafanhotos as g join cursos as c on g.cursoprefetido = c.idcurso order by g.profissao');
                break;
            case 'nascimento':
                $busca = $cd->query('select * from gafanhotos as g join cursos as c on g.cursoprefetido = c.idcurso order by g.nascimento');
                break;
            case 'sexo':
                $busca = $cd->query('select * from gafanhotos as g join cursos as c on g.cursoprefetido = c.idcurso order by g.sexo');
                break;
            case 'peso':
                $busca = $cd->query('select * from gafanhotos as g join cursos as c on g.cursoprefetido = c.idcurso order by g.peso');
                break;
            case 'altura':
                $busca = $cd->query('select * from gafanhotos as g join cursos as c on g.cursoprefetido = c.idcurso order by g.altura');
                break;
            case 'nacionalidade':
                $busca = $cd->query('select * from gafanhotos as g join cursos as c on g.cursoprefetido = c.idcurso order by g.nacionalidade');
                break;
            case 'cursopreferido':
                $busca = $cd->query('select * from gafanhotos as g join cursos as c on g.cursoprefetido = c.idcurso order by c.nomecurso');
        }
        if (!$busca){
            echo 'erro';
        } else {
            if ($busca->num_rows == 0){
                echo 'erro';
            } else {
                while ($reg=$busca->fetch_object()){
                    echo "<tr><td>$reg->nome</td><td>$reg->profissao</td><td>$reg->nascimento</td><td>$reg->sexo</td><td>$reg->peso</td><td>$reg->altura</td><td>$reg->nacionalidade</td><td>$reg->nomecurso</td></tr>";
                }
            }
        }
        ?>
    </table>
    <a href="p2.php" style="text-decoration: none;">ver tabela de gêneros</a>
    <?php $cd->close() ?>
</body>
</html>