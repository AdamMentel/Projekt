<?php

$servername = "localhost";
$username = "mentel";
$password = "Heslo123";
$dbname = "mentel3A2";

$connection = new mysqli($servername, $username, $password, $dbname);


if ($connection->connect_error) {
    die("Chyba pripojenie k db: " . $connection->connect_error);
}

$sql = "SELECT id, nazov FROM t_produkt";

$vysledok = $connection->query($sql);

$pocet = $vysledok->num_rows;

if ($pocet>0){
    while($riadok = $vysledok->fetch_assoc() ){
        echo "Produkt ".$riadok["id"]." je: " .$riadok["nazov"]." <br />";
    }
} 
?>