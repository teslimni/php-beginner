<table class="table table-bordered table-hover">
	<thead>
		<tr>
			<td>Id</td>
			<td>Author</td>
			<td>Title</td>
			<td>Category</td>
			<td>Content</td>
			<td>Status</td>
			<td>Image</td>
			<td>Tags</td>
			<td>Comments</td>
			<td>Date</td>
			<td>Edit</td>
			<td>Delete</td>
		</tr>
	</thead>
	<tbody>
	
    <?php 
		$query = "SELECT * FROM posts";
		$select_posts = mysqli_query($connection, $query);

		while ($row = mysqli_fetch_assoc($select_posts)) { ?>
			<tr>
	        	<?php 
					$post_id	 		= $row["post_id"];
					$post_author 		= $row["post_author"];
					$post_title	 		= $row["post_title"];
					$post_category_id   = $row["post_category_id"];
					$post_content		= $row["post_content"];
					$post_status 		= $row["post_status"];
					$post_image			= $row["post_image"];
					$post_tags 			= $row["post_tags"];
					$post_comment_count	= $row["post_comment_count"];
					$post_date 			= $row["post_date"];
				?>

				<td><?php echo $post_id; ?></td>
				<td><?php echo $post_author; ?></td>
				<td><?php echo $post_title; ?></td>
				<?php
					 $query = "SELECT * FROM categories WHERE cat_id = {$post_category_id}";
			         $select_categories_id = mysqli_query($connection, $query);
		            while ($row = mysqli_fetch_assoc($select_categories_id)) {
		             	$cat_id = $row['cat_id'];
		                $cat_title = $row['cat_title']; 
		            }
	            ?>

				<td><?php echo $cat_title; ?></td>
				<td><?php echo $post_content; ?></td>
				<td><?php echo $post_status; ?></td>
				<td><img  width='100' src="../images/<?php echo $post_image; ?>" title="<?php echo $post_title; ?>" alt="<?php  echo $post_title; ?>" ></td>
				<td><?php echo $post_tags ?></td>
				<td><?php echo $post_comment_count; ?></td>
				<td><?php echo $post_date; ?></td>
				<td><a href="posts.php?source=edit_post&amp;p_id=<?php echo $post_id; ?>">Edit</a></td>
	            <td><a href="posts.php?delete=<?php echo $post_id; ?>">Delete</a></td>
  <?php } ?>
			</tr>
    </tbody>
</table>

<?php 
    if(isset($_GET['delete'])) {
        $the_post_id = $_GET['delete'];

        $query = "DELETE FROM posts WHERE post_id = {$the_post_id} ";
        $delete_query = mysqli_query($connection, $query);
        header("Location: posts.php");
    }


 ?>