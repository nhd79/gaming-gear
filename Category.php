<?php
    include_once("xl_csdl.php");
    $bangloaisp=Doc_Bang("select * from danhmuc");

    foreach($bangloaisp as $lsp)
    echo "<a href='index.php?maloai=".$lsp[0]."' class='list-group-item'>".$lsp[1]."</a>";
?>