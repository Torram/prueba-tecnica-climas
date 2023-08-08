<?php
function ejecutarConsulta() {
    global $conn;

    $sql = "SELECT t1.campo1, t1.campo2, t2.campo1, t2.campo2, t3.campo1, t3.campo2
            FROM tabla1 t1
            JOIN tabla2 t2 ON t1.id = t2.id
            JOIN tabla3 t3 ON t1.id = t3.id";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        return $result->fetch_all(MYSQLI_ASSOC);
    } else {
        return [];
    }
}
?>
