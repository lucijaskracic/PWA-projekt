<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
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
            </ul>
        </nav>
    </header>
    <main>
        <div class="login-form">
            <h2>Login</h2>
            <br>
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <br>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <br>
                <div class="form-group">
                    <button type="submit">Login</button>
                </div>
            </form>

            <?php
            session_start();

            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                include 'connect.php'; 

                $username = mysqli_real_escape_string($dbc, $_POST['username']);
                $password = mysqli_real_escape_string($dbc, $_POST['password']);

                $query = "SELECT * FROM korisnik WHERE username = ?";
                $stmt = mysqli_prepare($dbc, $query);
                mysqli_stmt_bind_param($stmt, "s", $username);
                mysqli_stmt_execute($stmt);

                $result = mysqli_stmt_get_result($stmt);

                if (mysqli_num_rows($result) == 1) {
                    $row = mysqli_fetch_assoc($result);
                    if (password_verify($password, $row['password'])) {
                        $_SESSION['username'] = $username;
                        $_SESSION['level'] = $row['level'];
                        mysqli_stmt_close($stmt);
                        mysqli_close($dbc);
                        header("Location: index.php"); 
                        exit();
                    } else {
                        echo "<p>Invalid username or password.</p>";
                    }
                } else {
                    echo "<p>Invalid username or password.</p>";
                }

                mysqli_stmt_close($stmt);
                mysqli_close($dbc);
            }
            ?>
        </div>
    </main>
    <footer>
        <p>Lucija Skračić</p>
        <p>lskracic@tvz.hr</p>
        <p>2024.</p>
    </footer>
</body>

</html>