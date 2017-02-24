<?php 
/**
 * @param  $result sql $query variable
 * @return bool
 */
function confirmQuery($result) {
	global $connection;

	if(!$result) {
		die('QUERY FAILED' . mysqli_error($connection));
	}
}

/**
 * The C in CRUD to add categories to database
 * @return [type]
 */
function insert_categories() {
	global $connection;

	if(isset($_POST["submit"])) {

		$cat_title = $_POST["cat_title"];

		if( $cat_title == "" || empty($cat_title) ) {

			echo "This field should not be empty";

		} else {

			$query = "INSERT INTO categories(cat_title) ";
			$query .= "VALUE('{$cat_title}') ";

			$create_category_query = mysqli_query($connection, $query);

			if(!$create_category_query) {
				die("QUERY FAILED" . mysqli_error($connection));
			}
		}
	}
} 


function findAllCategories() {
		global $connection;

	// FIND ALL CATEGORIES QUERY

	$query = "SELECT * FROM categories";
	$select_categories = mysqli_query($connection, $query);

	while ($row = mysqli_fetch_assoc($select_categories)) {
	 	$cat_id = $row['cat_id'];
	    $cat_title = $row['cat_title'];

		echo "<tr>";
		echo "<td>{$cat_id}</td>";
		echo "<td>{$cat_title}</td>";
		echo "<td><a href='categories.php?delete={$cat_id}'>Delete</a></td>";
		echo "<td><a href='categories.php?edit={$cat_id}'>Edit</a></td>";
		echo "</tr>";
	}
}


function deleteCategories() {
	global $connection;

	if(isset($_GET['delete'])) {

    	$the_cat_id = $_GET['delete'];
    	$query = "DELETE FROM categories WHERE cat_id = {$the_cat_id}";
    	$delete_query = mysqli_query($connection, $query);
    	header("Location: categories.php");
    }
}


function post_count() {
	global $connection;

	$query = "SELECT * FROM posts";
    $select_all_post = mysqli_query($connection, $query);
    $post_count = mysqli_num_rows($select_all_post);

    return $post_count;
}

function category_count() {
	global $connection;
	$query = "SELECT * FROM categories";
	$select_all_categories = mysqli_query($connection, $query);
	$category_count = mysqli_num_rows($select_all_categories);

	return $category_count;
}

function comment_count() {
	global $connection;

	$query = "SELECT * FROM comments";
    $select_all_users = mysqli_query($connection, $query);
    $comment_count = mysqli_num_rows($select_all_users);

    return $comment_count;
}


function user_count() {
	global $connection;

	$query = "SELECT * FROM users";
    $select_all_users = mysqli_query($connection, $query);
    $user_count = mysqli_num_rows($select_all_users);

    return $user_count;
}



