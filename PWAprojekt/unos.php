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
        </ul>
    </nav>
</header>
<main>
    <h2>Submit a new article</h2>
    <?php
    include 'connect.php';

    $title = '';
    $category = '';
    $shortCont = '';
    $cont = '';
    $id = '';
    $imageSrc = '';

    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
        $query = "SELECT * FROM vjest WHERE id=$id";
        $result = mysqli_query($dbc, $query);
        if ($result && mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);
            $title = $row['title'];
            $category = $row['category'];
            $shortCont = $row['shortCont'];
            $cont = $row['cont'];
            $imageSrc = $row['imageSrc'];
        }
    }
    ?>
    <form action="skripta.php" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
        <input type="hidden" name="id" value="<?php echo htmlspecialchars($id); ?>">
        <div class="form-group">
            <label for="title">Article Title:</label>
            <input type="text" id="title" name="title" class="titlebox" required value="<?php echo htmlspecialchars($title); ?>">
        </div>
        <br>
        <div class="form-group">
            <label for="image">Image:</label>
            <?php if ($imageSrc): ?>
                <img src="pictures/<?php echo htmlspecialchars($imageSrc); ?>" alt="Current Image" width="200">
                <input type="file" id="image" name="image" accept="image/*">
            <?php else: ?>
                <input type="file" id="image" name="image" accept="image/*" required>
            <?php endif; ?>
        </div>
        <br>
        <div class="form-group">
            <label for="category">Category:</label>
            <select id="category" name="category" required>
                <option value="LeagueOfLegends" <?php echo ($category == 'LeagueOfLegends') ? 'selected' : ''; ?>>League of Legends</option>
                <option value="Other" <?php echo ($category == 'Other') ? 'selected' : ''; ?>>Other</option>
            </select>
        </div>
        <br>
        <div class="form-group">
            <label for="arhiva">Archive:</label>
            <input type="checkbox" name="arhiva" id="arhiva">
        </div>
        <br>
        <div class="form-group">
            <label for="shortcontent">Short description:</label>
            <textarea id="shortcontent" name="shortcontent" rows="5" required><?php echo htmlspecialchars($shortCont); ?></textarea>
        </div>
        <br>
        <div class="form-group">
            <label for="content">Article content:</label>
            <textarea id="content" name="content" rows="10" required><?php echo htmlspecialchars($cont); ?></textarea>
        </div>
        <br>
        <button type="submit" class="sub"><?php echo $id ? 'Update Article' : 'Submit Article'; ?></button>
    </form>
</main>
<footer>
    <p>Lucija Skračić</p>
    <p>lskracic@tvz.hr</p>
    <p>2024.</p>
</footer>
<script>
    function validateForm() {
        var title = document.getElementById("title");
        var image = document.getElementById("image");
        var category = document.getElementById("category");
        var shortcontent = document.getElementById("shortcontent");
        var content = document.getElementById("content");

        var isValid = true;

        if (title.value.trim().length < 5 || title.value.trim().length > 30) {
            title.classList.add("error");
            isValid = false;
        } else {
            title.classList.remove("error");
        }

        if (!<?php echo $id ? 'true' : 'false'; ?> && image.value.trim() === "") {
            image.classList.add("error");
            isValid = false;
        } else {
            image.classList.remove("error");
        }

        if (category.value.trim() === "") {
            category.classList.add("error");
            isValid = false;
        } else {
            category.classList.remove("error");
        }

        if (shortcontent.value.trim().length < 10 || shortcontent.value.trim().length > 100) {
            shortcontent.classList.add("error");
            isValid = false;
        } else {
            shortcontent.classList.remove("error");
        }

        if (content.value.trim() === "") {
            content.classList.add("error");
            isValid = false;
        } else {
            content.classList.remove("error");
        }

        return isValid;
    }
</script>
</body>
</html>