<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Oh Yes</title>
    </head>
    <body>
        <span class = "title">Bem-Vindo ao NSA!</span>

        <form class = "form">
            <label for="usuarios">Selecione</label>
            <select name = "usuarios">
                <option value = "aluno">Aluno</option>
                <option value = "responsavel">Responsável</option>
                <option value = "professor">Professor</option>
            </select>
            
            <label for="codEtec">Cód. da Etec: </label>
            <input type = "text" name = "codEtec" size = "1">

            <label for="rm">RM: </label>
            <input type = "text" name = "rm" placeholder = "Digite o seu RM" size="10">

            <label for="senha">Senha: </label>
            <input type = "password" name = "senha" size="15">
        </form>
    </body>
</html>
