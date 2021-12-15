<?php
$filename = "C:\\xampp\\htdocs\\test\\pozice.txt";
global $foldername;
$foldername = "C:\\xampp\\htdocs\\test\\";
$myfile = fopen($filename,"a") or die("Je to rozbité!");
$urllocal = "http://localhost/test/test.html";
$url = "https://www.cts-tradeit.cz/kariera/";
global $ArrPos;
$ArrPos = array();
global $ArrPopis;
$ArrPopis = array();
global $PositionName;

function getlinks($SourceUrl,$Delimiter1,$Search){
    $Html1 = file_get_contents($SourceUrl);
    $Array = preg_split($Delimiter1, $Html1);
    global $PositionTmp1;
    foreach ($Array as $Key => $Value) {
        if (strpos($Array[$Key], '        <a class="card card-lg card-link-bottom" href="/kariera/') === 0) {
            $Link =  $GLOBALS['url'].substr($Array[$Key], 64, -2);
            $PositionTmp1 = ltrim($Array[$Key+3]," ");
            $Position = preg_replace("![^A-Za-z0-9]+!i", "", $PositionTmp1);
            $ArrPos[]=$Link;
            $Html2 = file_get_contents($Link);
            $Array2 = preg_split("/\r\n|\n|\r/", $Html2);
            echo $Position." | ".$Link." | ".$DescriptionTmp2."\r\n";
            }            
        }

    foreach($ArrPos as $KeyPos => $ValPos){
        $Html3 = file_get_contents($ArrPos[$KeyPos]);
        $Array3 = preg_split("/\r\n|\n|\r/", $Html3);
        if (strpos($ArrPos[$KeyPos], 'Co tě u nás čeká</h2>') > 0) {
            $DescriptionTmp2 = ltrim($Array2[$Key2+1]," ");
            //$Description2 = preg_replace("![^a-z0-9]+!i", "_", $DescriptionTmp2);
            $Handle = fopen($GLOBALS['foldername']."pozice\\".$Position.".txt","a") or die("Je to rozbité!");
            fwrite($Handle,$DescriptionTmp2."\r\n");
            //echo $Position." | ".$Link." | ".$DescriptionTmp2."\r\n";
        }
        //print_r($Array3);
    }
}
$Positions = getlinks("https://www.cts-tradeit.cz/kariera/","/\r\n|\n|\r/",'        <a class="card card-lg card-link-bottom" href="/kariera/',$GLOBALS['foldername']."pozice\\zkouska.txt");
?>