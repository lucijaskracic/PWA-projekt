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

        // Check if category parameter is set in the URL
        if (isset($_GET['category'])) {
            $category = $_GET['category'];

            // Prepare SQL query to fetch articles based on category
            // Use single quotes around $category in SQL query for string comparison
            $query = "SELECT * FROM vjest WHERE category='$category' ORDER BY id DESC";
            $result = mysqli_query($dbc, $query);

            // Check if query was successful
            if ($result && mysqli_num_rows($result) > 0) {
                echo '<section class="news-section">';
                while ($row = mysqli_fetch_assoc($result)) {
                    echo '<a href="clanak.php?id='. $row['id'] .' class="clanak">';
                    echo "<article>";
                    echo "<img src='pictures/{$row['imageSrc']}' alt='" . htmlspecialchars($row['title']) . "' width='300'>";
                    echo "<h3>" . htmlspecialchars($row['title']) . "</h3>";
                    echo "</article>";
                    echo '</a>';
                }
                echo "</section>";

                mysqli_free_result($result);
            } else {
                echo "<p>No articles found for this category.</p>";
            }
        } else {
            echo "<p>No category specified.</p>";
        }

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