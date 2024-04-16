


<?php

$kasutaja = "kadri";
$dbserver = "localhost";
$andmebaas = "restoranid";
$pw = "parool";

$yhendus = mysqli_connect ($dbserver, $kasutaja, $pw, $andmebaas);

if (!$yhendus) {
    die ("Sa jälle ebaõnnestusid!");
}

?>