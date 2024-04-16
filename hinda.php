<?php include("config.php"); ?>

<?php
$errors = [];
$nimi = $hinne = $kommentaar = '';

$restorani_id = $_GET['id'];

// Restorani nime päring
$nimi_paring = "SELECT nimi FROM restoranid WHERE id = ?";
$stmt = $yhendus->prepare($nimi_paring);
$stmt->bind_param('i', $restorani_id);
$stmt->execute();
$nimi_tulemus = $stmt->get_result();
$restorani_nimi = $nimi_tulemus->fetch_assoc()['nimi'];

// Hinnangute päring
$paring = "SELECT * FROM hinnangud WHERE restorani_id = ?";
$stmt = $yhendus->prepare($paring);
$stmt->bind_param('i', $restorani_id);
$stmt->execute();
$tulemus = $stmt->get_result();

// Hinnangu lisamine
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nimi = $_POST['nimi'];
    $hinnang = $_POST['hinnang'];
    $kommentaar = $_POST['kommentaar'];

    if (empty($nimi) || empty($hinnang) || empty($kommentaar)) {
        $errors[] = 'Kõik väljad on kohustuslikud!';
    }

    if (empty($errors)) {
        $paring = "INSERT INTO hinnangud (restorani_id, nimi, kommentaar, hinnang) VALUES (?, ?, ?, ?)";
        $stmt = $yhendus->prepare($paring);
        $stmt->bind_param('isss', $restorani_id, $nimi, $kommentaar, $hinnang);
        if ($stmt->execute()) {
            // Uuendame keskmist hinda ja hinnangute arvu
            $keskmine_paring = "SELECT AVG(hinnang) AS keskmine_hinne, COUNT(*) AS hinnangute_arv FROM hinnangud WHERE restorani_id = ?";
            $stmt = $yhendus->prepare($keskmine_paring);
            $stmt->bind_param('i', $restorani_id);
            $stmt->execute();
            $result = $stmt->get_result();
            $data = $result->fetch_assoc();

            $keskmine_hinne = $data['keskmine_hinne'];
            $hinnangute_arv = $data['hinnangute_arv'];

            $uuenda_paring = "UPDATE restoranid SET keskmine_hinne = ?, hinnangute_arv = ? WHERE id = ?";
            $stmt = $yhendus->prepare($uuenda_paring);
            $stmt->bind_param('dii', $keskmine_hinne, $hinnangute_arv, $restorani_id);
            if ($stmt->execute()) {
                header("Location: index.php");
                exit();
            } else {
                echo "Viga uuendamisel: " . $stmt->error;
            }
        } else {
            echo "Viga: " . $stmt->error;
        }
    }
}
?>

<!-- HTML ja muu kood jäävad samaks -->

<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Söögikoha hindamine</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="text-center mt-5">
        <h1>Hinda restorani: <?php echo $restorani_nimi; ?></h1>
    </div>

<form action="" method="post">
    <div class="container mt-5">


        <table class="table table-bordered">
            <tr>
                <td>Nimi:</td>
                <td><input type="text" name="nimi" value="<?php echo $nimi; ?>" class="form-control"></td>
            </tr>
            <tr>
                <td>Kommentaar:</td>
                <td><textarea name="kommentaar" class="form-control"><?php echo $kommentaar; ?></textarea></td>
            </tr>
            <tr>
                <td>Hinnang:</td>
                <td>
                    <?php
                    for ($i = 1; $i <= 10; $i++) {
                        echo "<input type='radio' name='hinnang' value='$i'>$i ";
                    }
                    ?>
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Hinda" class="btn btn-primary"></td>
            </tr>
        </table>
    </div>
</form>


<?php
if (!empty($errors)) {
    foreach ($errors as $error) {
        echo "<p style='color: red;'>$error</p>";
    }
}
?>
 <h2 class="text-center">Teiste hinnangud:</h2>
 <div class="container mt-5">
    <?php if ($tulemus->num_rows > 0): ?>
        <?php while ($row = $tulemus->fetch_assoc()): ?>
            <div class="row">
                <div class="col-md-6">
                    <strong>Nimi:</strong> <?php echo $row['nimi']; ?><br>
                    <strong>Hinnang:</strong> <?php echo $row['hinnang']; ?>
                </div>
                <div class="col-md-6">
                    <strong>Kommentaar:</strong><br>
                    <?php echo $row['kommentaar']; ?>
                </div>
            </div>
            <hr>
        <?php endwhile; ?>
    <?php endif; ?>
</div>





<div class="ml-5">
        <a href="index.php" class="btn btn-primary">Tagasi avalehele</a>
    </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>