<?php
include_once("templates/header.php");
include_once("templates/slider.php");

?>
<table class="table table-hover">
	<thead>
		<tr>
	    	<th>Id</th>
	      <th>UserCode</th>
	      <th>UserCreate</th>
	  </tr>
	</thead>

<?php
    $sql = "SELECT * FROM tbl_user";
    $query = query($sql,$conn);
  while($row=fetch_assoc($query)) {
		echo "<tbody>";
    	echo "<tr>";
      	echo "<th scope='row'>".$row["user_id"]."</th>";
      	echo "<td>".$row["userCode"]."</td>";
      	echo "<td>".$row["user_crea"]."</td>";
    	echo "</tr>";
  	echo "</tbody>";
	}
	?>
</table>


              <div class="row">
                <div class="col-sm-6 col-md-4">
                  <div class="thumbnail">
                    <img src="assets\img\ny_city-1348x500.jpg" alt="...">
                    <div class="caption">
                      <h3>Thumbnail label</h3>
                      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                      <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-md-4">
                  <div class="thumbnail">
                    <img src="assets\img\ny_city-1348x500.jpg" alt="...">
                    <div class="caption">
                      <h3>Thumbnail label</h3>
                      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                      <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-md-4">
                  <div class="thumbnail">
                    <img src="assets\img\ny_city-1348x500.jpg" alt="...">
                    <div class="caption">
                      <h3>Thumbnail label</h3>
                      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                      <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                    </div>
                  </div>
                </div>
              </div>
<?php
include_once("templates/footer.php");
 ?>
