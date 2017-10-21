<?php include 'header.php'; ?>

<?php

$mysqli=new mysqli('localhost','root','','property');
	if($mysqli->connect_error){

		printf("can not connect databse %s\n",$mysqli->connect_error);
		exit();
	}

if(isset($_GET['posts'])){

	$id=$_GET['posts'];
	$query2= "SELECT * FROM propety where id='$id'";
	$readd=$mysqli->query($query2);

}

?>

<style type="text/css">
	
.rooms img{
	width: 50px;
	height: 50px;
}

</style>
<div class="container">
	<table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>Address</th>
      <th>Access</th>
      <th>Floor Space</th>
      <th>Utility</th>
      <th>Description</th>
      <th>Rooms</th>
    </tr>
  </thead>
  <tbody>
  <?php while ($row= $readd->fetch_assoc()) { ?>

    <tr>
      <td> <?php echo $row['address'];  ?></td>
      <td><?php echo $row['access'];  ?></td>
      <td><?php echo $row['floor'];  ?></td>
      <td><?php echo $row['utility'];  ?></td>
      <td><?php echo $row['descrip'];  ?></td>
      <td class="rooms">

      		<?php  $image_name="SELECT * FROM propety as p join details as d 
      					on p.id =d.proid where d.proid =".$row['id'];
      					$read1=$mysqli->query($image_name);

      					foreach ($read1 as $value) { ?>

      						<img src="uploads/<?php echo $value['images']; ?>" />
      						
      					<?php  } ?>
      					</td>
    </tr>
<?php   } ?>
  </tbody>
</table> 

</div>




<?php  include 'footer.php' ; ?>