<h3 style=" text-align:center;margin-bottom: 50px">Showing Now</h3>

<?php
$count = 4;
$stmt = $conn->query("select * from movielist where catagory='now';");
$res = $stmt->fetchAll(PDO::FETCH_ASSOC);
foreach ($res as $row) {
    // $_SESSION['movie']=;

    if ($count == 4) {
        echo "<div class='row movieRow'>";
        $count = 0;
    }

    echo "
                <div class='col-md-3 col-sm-6 col-xs-12'>
                  <div class='card-container'>
                    <a href='movie.php?id=" . $row['movieId'] . "'>
                      <div class='card'>
                      <div class='front' style='background-color: #161b22; color:#c9d1d9'>
                        <div class='cover'>
                          <img style='object-fit:cover' src='uploadimages/" . $row['image'] . "'/>
                        </div>
                        <div class='content'>
                          <div class='main'>
                            <h3 class='name'>" . $row['Name'] . "</h3>

                            <p><b>IMDB: </b>" . $row['imdb'] . "</p>

                            <p class='profession' style=' color: #8b949e!important;'><b>Genre: </b>" . $row['Genre'] . "</p>

                            <p class='profession' style=' color: #8b949e!important;'><b>Director: </b> " . $row['Director'] . "</p>
                          </div>
                        </div>
                      </div>
                      <!-- end front panel -->
                      <div class='back'>
                        <div class='content'>
                          <div class='main'>
                            <h4 class='text-center'>" . $row['Name'] . "</h4>
                            <p class='text-center'>" . $row['Description'] . " </p>
                          </div>
                        </div>
                      </div>
                      </div> <!-- end card -->
                    </a>
                  </div> <!-- end card-container -->
                </div>";
    $count++;
    if ($count == 4) {
        echo "</div>";
    }
}
?>
</div>

<h3 style=" text-align:center;margin-bottom: 50px">Upcoming</h3>

<?php
$count = 4;
$stmt = $conn->query("select * from movielist where catagory='upcoming';");
$res = $stmt->fetchAll(PDO::FETCH_ASSOC);
if($res)
foreach ($res as $row) {
    // $_SESSION['movie']=;

    if ($count == 4) {
        echo "<div class='row movieRow'>";
        $count = 0;
    }

    echo "
                <div class='col-md-3 col-sm-6 col-xs-12'>
                  <div class='card-container'>
                    <a href='movie.php?id=" . $row['movieId'] . "'>
                      <div class='card'>
                      <div class='front' style='background-color: #161b22; color:#c9d1d9'>
                        <div class='cover'>
                          <img style='object-fit:cover' src='uploadimages/" . $row['image'] . "'/>
                        </div>
                        <div class='content'>
                          <div class='main'>
                            <h3 class='name'>" . $row['Name'] . "</h3>

                            <p><b>IMDB: </b>" . $row['imdb'] . "</p>

                            <p class='profession' style=' color: #8b949e!important;'><b>Genre: </b>" . $row['Genre'] . "</p>

                            <p class='profession' style=' color: #8b949e!important;'><b>Director: </b> " . $row['Director'] . "</p>
                          </div>
                        </div>
                      </div>
                      <!-- end front panel -->
                      <div class='back'>
                        <div class='content'>
                          <div class='main'>
                            <h4 class='text-center'>" . $row['Name'] . "</h4>
                            <p class='text-center'>" . $row['Description'] . " </p>
                          </div>
                        </div>
                      </div>
                      </div> <!-- end card -->
                    </a>
                  </div> <!-- end card-container -->
                </div>";
    $count++;
    if ($count == 4) {
        echo "</div>";
    }
}
else
    echo '<h4 style=" text-align:center;margin-bottom: 50px">No Upcoming Movies Now</h4>'
?>
</div>
