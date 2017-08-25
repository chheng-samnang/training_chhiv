<?php include_once("templates/header.php"); ?>
<?php include_once("templates/left.php"); ?>
<?php
  $userCode = $_POST["txtCode"];
  $userName = $_POST["txtName"];
  $password = $_POST["txtPass"];
  $des = $_POST["txtDesc"];
  $status = $_POST["txtStat"];
  $user_crea = 'Admin';
  $date_add = date('Y-m-d');
  if (isset($_POST["btnOk"])) {

 //INSERT INTO tbl_user(user_id,userCode,userName,`password`,des,`status`,user_crea,date_crea,user_updt,date_updt)
//VALUES (NULL,'sfrasf','sfafas','sss','  ','','Admin','2017-08-25','','')

    echo $sql = "INSERT INTO tbl_user('userCode',
                     'userName',
                     'password',
                     'des',
                     'status',
                     'user_crea',
                     'date_crea',
                     'user_updt',
                     'date_updt')
              VALUES ('$userCode',
                      '$userName',
                      '$password',
                      '$des',
                      '$status',
                      '$user_crea',
                      '$date_add',
                      '$user_updt',
                      '$date_updt')";
                      if ($conn->query($sql) === TRUE)
                      {
                        echo "New record created successfully";
                      } else {
                          echo "Error: " . $sql . "<br>" . $conn->error;
                      }
    // echo "<script> alert('Boy'); </script>";
  }

?>
<div class="right_col" role="main">
  <div class="container">
    <div class="" >
      <div class="col-lg-12">
        <div class="panel panel-primary">
          <div class="panel-heading"><h4>Add New User</h4></div>
          <div class="panel-body">
            <form class="" action="add_user.php" method="post">
              <div class="row" id="row">
                <div class="col-lg-12">
                  <div class="">
                    <div class="col-lg-4">
                      <label for="txtCode">User Code</label>
                      <input class="form-control" type="text" name="txtCode" id="txtCode" value="">
                    </div>
                    <div class="col-lg-4">
                      <label for="txtName">Name</label>
                      <input class="form-control" type="text" name="txtName" id="txtName" value="">
                    </div>
                    <div class="col-lg-4">
                      <label for="txtStat">Status</label>
                      <select class="form-control" name="status">
                        <option value="Choose One">Choose One</option>
                        <option value="1">Enable</option>
                        <option value="0">Disable</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row" id="row">
                <div class="col-lg-12">
                  <div class="col-lg-4">
                      <label for="txtPass">Password</label>
                      <input class="form-control" type="password" name="txtPass" id="txtPass" value="">
                  </div>
                  <div class="col-lg-4">
                      <label for="txtpass">Password</label>
                      <input class="form-control" type="password" name="txtpass" id="txtpass" value="">
                  </div>
                </div>
              </div>
              <div class="row" id="row">
                <div class="col-lg-12">
                  <div class="col-lg-12">
                    <label for="txtDesc">Description</label>
                    <textarea name="txtDesc" class="form-control" rows="8" cols="80">  </textarea>
                  </div>
                </div>
              </div>
              <div class="row" id="row">
                <div class="col-lg-12">
                    <div class="pull-right">
                      <div class="col-lg-6">
                        <input type="button" class="btn btn-default" name="btnCancel" value="Cancel">
                      </div>
                      <div class="col-lg-6">
                        <input type="submit" class="btn btn-primary btn-block" name="btnOk" value="Ok">
                      </div>
                    </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php include_once("templates/footer.php") ?>
