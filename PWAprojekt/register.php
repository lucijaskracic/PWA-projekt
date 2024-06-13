<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Registration</title>
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
        <div class="register-form">
            <h2>Registration</h2>
            <br>
            <?php
            session_start(); // Start session if not already started

            $msg = ''; // Initialize message variable

            // Check if the form was submitted
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                // Include your database connection file
                include 'connect.php';

                // Sanitize and retrieve user inputs
                $name = mysqli_real_escape_string($dbc, $_POST['name']);
                $surname = mysqli_real_escape_string($dbc, $_POST['surname']);
                $username = mysqli_real_escape_string($dbc, $_POST['username']);
                $password = mysqli_real_escape_string($dbc, $_POST['password']);
                $hashed_password = password_hash($password, PASSWORD_BCRYPT); // Use PASSWORD_BCRYPT for better compatibility
                $level = 0;

                // Admin credentials (you can replace these with your actual admin credentials)
                $admin_username = "admin";
                $admin_password = "admin_password"; // Hashed version should be stored securely

                // Check if username already exists
                $sql_check = "SELECT username FROM korisnik WHERE username = ?";
                $stmt_check = mysqli_stmt_init($dbc);
                if (mysqli_stmt_prepare($stmt_check, $sql_check)) {
                    mysqli_stmt_bind_param($stmt_check, 's', $username);
                    mysqli_stmt_execute($stmt_check);
                    mysqli_stmt_store_result($stmt_check);

                    if (mysqli_stmt_num_rows($stmt_check) > 0) {
                        $msg = 'Username already exists!';
                    } else {
                        // Determine user level (0 for regular users, 1 for admin)
                        $user_level = ($username === $admin_username && password_verify($password, password_hash($admin_password, PASSWORD_BCRYPT))) ? 1 : 0;

                        // Register the user
                        $sql_register = "INSERT INTO korisnik (name, surname, username, password, level) VALUES (?, ?, ?, ?, ?)";
                        $stmt_register = mysqli_stmt_init($dbc);
                        if (mysqli_stmt_prepare($stmt_register, $sql_register)) {
                            mysqli_stmt_bind_param($stmt_register, 'ssssd', $name, $surname, $username, $hashed_password, $user_level);
                            mysqli_stmt_execute($stmt_register);
                            $registriranKorisnik = true; // Flag indicating successful registration
                        } else {
                            $msg = 'Error preparing statement: ' . mysqli_error($dbc);
                        }
                    }
                } else {
                    $msg = 'Error preparing statement: ' . mysqli_error($dbc);
                }

                // Close statement and database connection
                mysqli_stmt_close($stmt_check);
                mysqli_stmt_close($stmt_register);
                mysqli_close($dbc);
            }
            ?>

            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
                 <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <br>
                <div class="form-group">
                    <label for="surname">Surname:</label>
                    <input type="text" id="surname" name="surname" required>
                </div>
                <br>
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
                    <button type="submit">Register</button>
                </div>
            </form>
        </div>

    </main>
    <footer>
        <p>Lucija Skračić</p>
        <p>lskracic@tvz.hr</p>
        <p>2024.</p>
    </footer>
</body>

</html>