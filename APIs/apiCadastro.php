<?php
//ESTA API ESTÁ UTILIZANDO O BENCO DE DADOS AULA COM A TABELA
//USUÁRIOS E UTILIZA ENVIO E RETORNO EM OBJETOS
header("Access-Control-Allow-Origin:http://localhost:8100");
header("Content-Type: application/x-www-form-urlencoded");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

    //RECUPERAÇÃO DO FORMULÁRIO
    $data = file_get_contents("php://input");
    $objData = json_decode($data);

    // TRANSFORMA OS DADOS
    $nome = $objData->nome;
    $email = $objData->email;
    $senha = $objData->senha;

    // LIMPA OS DADOS
    $nome = stripslashes($nome);
    $email = stripslashes($email);
    $senha = stripslashes($senha);

    $nome = trim($nome);
    $email = trim($email);
    $senha = trim($senha);
    $dados; // RECEBE ARRAY PARA RETORNO

    // INSERE OS DADOS
    @$db = new PDO("mysql:host=localhost;dbname=aula", "root", "");

   //VERIFICA SE TEM CONEXÃO
    if($db){
        $sql = " insert into usuarios values(NULL,' ".$nome." ',' " .$email." ',' ".md5($senha)." ' )";
        $query = $db->prepare($sql);
        $query ->execute();
        if(!$query){
                   $dados = array('mensage' => "Não foi possivel enviar os dados ");
                   echo json_encode($dados);
         }
        else{
                   $dados = array('mensage' => "Os dados foram inseridos com sucesso. Obrigado e bem vindo ");
                  echo json_encode($dados);
         };
    }
   else{
          $dados = array('mensage' => "Não foi possivel iserir os dados! Tente novamente mais tarde.");
          echo json_encode($dados);
    };
