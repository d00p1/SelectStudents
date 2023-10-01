<?php
    require("connect.php");
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Список студентов</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="header">
            <img src="images/logo.png"/>
        </div>
        <div class="container">
            <table>
                <thead>
                    <th>Порядковый номер</th>
                    <th>Имя Фамилия</th>
                    <th>Направление обучения</th>
                    <th>Подробнее</th>
                </thead>
                <tbody>
                    <?php
                    //Запрос на вывод
                        $sql= 'SELECT `id`, `name`, `direction` FROM `students`';
                     //Вывод данных
                        $result=mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) > 0){
                            while($row=mysqli_fetch_assoc($result)){
                                echo "<tr>";
                                 ?>
                                    <td ><? echo $row['id'];?></td>
                                    <td ><? echo $row['name'];?></td>
                                    <td ><? echo $row['direction'];?></td>
                                    <td ><button class="show-modal-btn">Подробнее</button></td>
                                 <?php
                                 echo"</tr>";
                            }
                        }
                    ?> 
                </tbody>
            </table> 
            <div id="myModal" class="modal">
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <?php
                        $sql = 'SELECT `name`, `dateofbirth`, `link` FROM `students`';
                        $result=mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) > 0){
                           $row=mysqli_fetch_assoc($result)
                                ?>
                                <p><?echo $row['name'] ?></p>
                                <p><?echo $row['dateofbirth'] ?></p>
                                <a href=""><?echo $row['link'] ?></a>
                                <?php
                            }
                    ?>      
                </div>
            </div> 
            <script type = 'text/javascript'>
                var modal = document.getElementById("myModal");
                var btns = document.querySelectorAll(".show-modal-btn");
                var span = document.getElementsByClassName("close")[0];

                // Функция для открытия модального окна
                function showModal() {
                    modal.style.display = "block";
                }

                // Функция для закрытия модального окна
                function closeModal() {
                    modal.style.display = "none";
                }

                // Обработчики событий для кнопок и закрытия модального окна
                btns.forEach(function(btn) {
                    btn.addEventListener("click", showModal);
                });

                span.addEventListener("click", closeModal);
                window.addEventListener("click", function(event) {
                    if (event.target == modal) {
                        closeModal();
                    }
                });
            </script>
         </div>            
    </body>
</html>