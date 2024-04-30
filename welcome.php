<?php
$servername = "localhost";
$username = "mentel";
$password = "Heslo123";
$dbname = "mentel3A2";

// Pripojenie k databáze
$connection = new mysqli($servername, $username, $password, $dbname);

// Kontrola pripojenia
if ($connection->connect_error) {
    die("Chyba pripojenie k db: " . $connection->connect_error);
}

$sql = "SELECT id, nazov, popis FROM t_produkty";

$vysledok = $connection->query($sql);

$pocet = $vysledok->num_rows;

?>

<!DOCTYPE html>
<html>
<head>
    <title>Produkty</title>
    <style>
        body {
            background-color: #f7f7f7;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        .description {
            display: none;
        }

        .show-description {
            cursor: pointer;
            color: blue;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Tabuľka produktov</h2>
        <table>
            <tr>
                <th>ID produktu</th>
                <th>Názov produktu</th>
                <th>Popis produktu</th>
            </tr>
            <?php
            if ($pocet > 0) {
                while ($produkt = $vysledok->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $produkt['id'] . "</td>";
                    echo "<td>" . $produkt['nazov'] . "</td>";
                    echo "<td><span class='show-description' onclick='showDescription(this)'>Zobraziť popis</span>";
                    echo "<div class='description'>" . $produkt['popis'] . "</div></td>";
                    echo "</tr>";
                }
            } else {
                echo "Žiadne výsledky";
            }
            
            ?>
        </table>
    </div>

    <script>
        function showDescription(element) {
            var description = element.nextElementSibling;
            if (description.style.display === "none") {
                description.style.display = "block";
                element.textContent = "Skryť popis";
            } else {
                description.style.display = "none";
                element.textContent = "Zobraziť popis";
            }
        }
    </script>
</body>
</html>
