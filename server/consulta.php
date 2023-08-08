<?php
    require_once("./db.php");
    
    $sql = "SELECT t1.campo1 AS t1_campo1, t1.campo2 AS t1_campo2, 
            t2.campo2 AS t2_campo2, t2.campo3 AS t2_campo3, 
            t3.campo3 AS t3_campo3, t3.campo4 AS t3_campo4
            FROM tabla1 AS t1
            JOIN tabla2 AS t2 ON t1.id = t2.id
            JOIN tabla3 AS t3 ON t1.id = t3.id";

    $result = $conn->query($sql);
    if ($result) {
        while ($row = $result->fetch_assoc()) {
            $data[] = array(
                "tabla1" => array("campo1" => $row['t1_campo1'], "campo2" => $row['t1_campo2']),
                "tabla2" => array("campo1" => $row['t2_campo2'], "campo2" => $row['t2_campo3']),
                "tabla3" => array("campo1" => $row['t3_campo3'], "campo2" => $row['t3_campo4'])
            );
        }
    } else {
        echo "Error en la consulta: " . $conn->error;
    }
    
    $conn->close();
    echo json_encode($data);
?>