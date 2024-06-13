<!DOCTYPE html>
<html lang="en">

<head>
<title>LevelUp</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
</head>


<body>
<header>
    <h1>LevelUp</h1>

    <hr class="hrheader">

    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="kategorija.php?category=LeagueOfLegends">LoL</a></li>
            <li><a href="kategorija.php?category=Other">Other</a></li>
            <li><a href="login.php" class="login-link">Login</a></li>
            <li><a href="register.php" class="register-link">Register</a></li>
            <?php
                session_start();
                if (isset($_SESSION['username'])) {
                    echo '<li><a href="unos.html">Create Page</a></li>';}
            ?>
        </ul>
        
    </nav>
</header>

<main>
    <h2>LoL</h2>

    <?php
    include 'connect.php';

    $query="SELECT * FROM vjest WHERE archive = 0 AND category = 'LeagueOfLegends' ORDER BY id DESC LIMIT 3";
    $result = mysqli_query($dbc, $query);

    echo '<section class="news-section">';
    while ($row = mysqli_fetch_assoc($result)) {
        echo '<a href="clanak.php?id='. $row['id'] .' class="clanak">';
        echo "<article>";
        echo "<img src='pictures/{$row['imageSrc']}' alt='" . htmlspecialchars($row['title']) . "' width='300'>";
        echo "<h3>" . htmlspecialchars($row['title']) . "</h3>";
        echo "</article>";
        echo "</a>";
        
    }
    echo "</section>";
   
    
    $query_other = "SELECT * FROM vjest WHERE archive = 0 AND category = 'Other' ORDER BY id DESC LIMIT 3";
    $result_other = mysqli_query($dbc, $query_other);

    echo '<hr>';
    echo '<h2>Other</h2>';
    echo '<section class="news-section">';
    while ($row_other = mysqli_fetch_assoc($result_other)) {
        echo '<a href="clanak.php?id='. $row_other['id'] .' class="clanak">';
        echo "<article>";
        echo "<img src='pictures/{$row_other['imageSrc']}' alt='" . htmlspecialchars($row_other['title']) . "' width='300'>";
        echo "<h3>" . htmlspecialchars($row_other['title']) . "</h3>";
        echo "</article>";
        echo "</a>";
    }
    echo "</section>";

    mysqli_close($dbc);
    ?>
</main>


<footer>
    <p>Lucija Skračić</p>
    <p>lskracic@tvz.hr</p>
    <p>2024.</p>
</footer>

</body>
</html>