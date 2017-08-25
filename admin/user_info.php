<?php include_once("templates/header.php"); ?>
<?php include_once("templates/left.php"); ?>

  <div class="right_col" role="main">
    <a class="btn btn-primary" href="add_user.php">Add A Veng</a> 
    <table class="table table-hover">
      <thead>
        <tr>
            <th>Id</th>
            <th>UserCode</th>
            <th>UserName</th>
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
                echo "<td>".$row["userName"]."</td>";
                echo "<td>".$row["user_crea"]."</td>";
              echo "</tr>";
            echo "</tbody>";
          }
        ?>
      </table>
  </div>
<?php include_once("templates/footer.php") ?>
