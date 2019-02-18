<!DOCTYPE HTML>
<html>
<head>
        <title> Lab 5 - Part 1 </title>
</head>
<body>

        <h1> MULTIPLICATION TABLE GENERATOR </h1>


        <?php

                session_start();

                if(isset($_SESSION['views']))
                        $_SESSION['views'] = $_SESSION['views']+1;
                else
                    $_SESSION['views']=1;

                echo "This page has " .$_SESSION['views'].  views ;
                echo "<br><br>";
        ?>



        <div> Create a MxN Table! (*NOTE: Dimensions must be between 3-12 in value)</div> <br>
                <form>
                        <div>M:</div>
                        <input type="number" name="rows" min="3" max="12"/> <br><br>
                        <div>N:</div>
                        <input type="number" name="cols" min="3" max="12"/> <br><br>
                        <div><br><input type="submit" value="Make That Table!"></div><br>
                </form>

                <?php
                        if (isset($_GET['rows']) && isset($_GET['cols'])) {
                        $rows = $_GET['rows'];
                        $cols = $_GET['cols'];
                        echo "<h2> Results: </h2>";

                        echo "<table border=\"1\">";
                        for ($i = 1; $i <= $rows; $i++) {
                                echo "<tr>";

                                for ($j=1; $j <= $cols; $j++) {

                                        echo "<td>" . $i * $j . "</td>";
                                }
                                echo "</tr>";
                        }
                echo "</table>";
                echo "<br>";

                for ($a=1; $a<=$rows; $a++) {
                for ($b=1; $b <=$cols; $b++) {
                        $mul = $a * $b;
                        echo "$a * $b = $mul <br>";
                }
                echo "<br>";
                }
                }
        ?>




        </body>
</html>
