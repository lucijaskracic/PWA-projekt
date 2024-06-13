<?php
include 'connect.php';

$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
$title = $_POST['title'];
$category = $_POST['category'];
$shortcontent = $_POST['shortcontent'];
$content = $_POST['content'];
$image = $_FILES['image']['name'];
$target = "pictures/" . basename($image);

if ($id) {
    // Update existing article
    if ($image) {
        // Update article with new image
        $query = "UPDATE vjest SET title='$title', category='$category', shortCont='$shortcontent', cont='$content', imageSrc='$image' WHERE id=$id";
    } else {
        // Update article without changing the image
        $query = "UPDATE vjest SET title='$title', category='$category', shortCont='$shortcontent', cont='$content' WHERE id=$id";
    }
} else {
    // Insert new article
    $query = "INSERT INTO vjest (title, category, shortCont, cont, imageSrc) VALUES ('$title', '$category', '$shortcontent', '$content', '$image')";
}

$result = mysqli_query($dbc, $query);

if ($result) {
    if ($image) {
        move_uploaded_file($_FILES['image']['tmp_name'], $target);
    }
    header("Location: index.php");
    exit();
} else {
    echo "Error: " . mysqli_error($dbc);
}

mysqli_close($dbc);
?>