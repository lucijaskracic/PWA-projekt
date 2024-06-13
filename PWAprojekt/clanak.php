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
    <?php
    include 'connect.php';
    
    if (isset($_POST['delete'])) {
        $id = intval($_POST['id']);
        $query = "DELETE FROM vjest WHERE id=$id";
        $result = mysqli_query($dbc, $query);
        if ($result) {
            header("Location: index.php");
            exit();
        } 
    }


    $id = intval($_GET['id']); 
    $query="SELECT * FROM vjest WHERE id=$id ORDER BY id DESC LIMIT 3";
    $result = mysqli_query($dbc, $query);

    echo '<section class="article-section">';
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<article>";
        echo '<h2 class="categ">' . htmlspecialchars($row['category']) . '</h2>';
        echo '<h2 class="headline">' . htmlspecialchars($row['title']) . '</h2>';
        echo '<p class="short">'. htmlspecialchars($row['shortCont']).'</p>';
        echo "<img class='articleImage' src='pictures/{$row['imageSrc']}' alt='" . htmlspecialchars($row['title']) . "' width='300'>";
        echo '<p class="long">'. htmlspecialchars($row['cont']).'</p>';
        if (isset($_SESSION['username']) && $_SESSION['level'] == 1) {
            echo "<a href='unos.php?id={$row['id']}' class='edit-button'>Edit Article</a>";
            echo "<br>";
            echo "<form method='post' action=''>"; 
            echo "<input type='hidden' name='id' value='{$row['id']}'>";
            echo "<input type='submit' name='delete' value='Delete Article' class='delete-button'>";
            echo "</form>";
            echo '</div>';
        }
        echo "</article>";
    }
    echo '</section>';
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