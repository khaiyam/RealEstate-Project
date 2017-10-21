<?php include 'header.php'; ?>
<?php    
$mysqli=new mysqli('localhost','root','','property');
	if($mysqli->connect_error){

		printf("can not connect databse %s\n",$mysqli->connect_error);
		exit();
	}

	$query="SELECT * FROM propety";
	$read=$mysqli->query($query);




?>

<div class="container-fluid">
	<div class="banner">
		<img src="images/banner.jpg">
	</div>

</div>

<div class="container">

<h2>  Property List  </h2>
<hr>

<table class="table table-striped table-hover ">
  <thead>
    <tr>

      <th>Property Name</th>
      <th>Monthly Charge</th>
      <th>Address</th>
      <th>View</th>
      <th>Details</th>
    </tr>
  </thead>
  <tbody>
  <?php while ($row=$read->fetch_assoc()) { ?>

    <tr class="info">
      <td><?php echo  $row['name'];   ?></td>
      <td><?php echo  $row['monthly'];   ?></td>
      <td><?php echo  $row['address'];   ?></td>
      <td><img src="uploads/<?php echo  $row['images']; ?>"</td>
      <td><a href="single.php?posts=<?php echo  $row['id'];  ?>">Details</a></td>
    </tr>

    <?php } ?>
  </tbody>
</table> 
	

</div>

<?php  include 'footer.php' ; ?>
