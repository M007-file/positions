<?php
set_time_limit(560);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kontakty";
$subst = '';
$masterurl = "https://www.edb.cz/katalog-firem/"; //"https://www.edb.cz/katalog-firem/elektro-a-pocitace/";
$stranka = file_get_contents($masterurl);
$re = '/(href=\"(http|https)\:\/\/(\w{1,63}\.){1,2}\w{1,10}((\/[a-zA-Z0-9\-]{1,63}){0,6})(\s{0}|\/[a-zA-Z0-9\-]{1,63}|\/[a-zA-Z0-9\-]{1,63}\/|\/|\/\?.\=[0-9]{1,3})\")/im';
$reedb = '/((href\=\"){1}(http|https)(\:\/\/){1}([a-zA-Z-]{1,63}\.){1,2}([a-zA-Z-]{1,10}\/){1}([a-zA-Z0-9\-\_]{1,63}\/|[a-zA-Z0-9\-\_]{1,63}|){1,4}(\?.\=[0-9]{1,4}|0{0})\")/im'; //https://regex101.com/r/924n4w/1
$remail = '/(href=\"(mailto:){1}[a-zA-Z0-9\-\.\_\+]{1,63}\@{1}[a-zA-Z0-9\-\.\_\+]{1,63}){1,3}\.[a-zA-Z0-9\-\.\_\+]{1,10}\"/im';
$tabulky = array('emaily', 'firmy', 'urls');

function nacti($url, $searchfor, $regex, $offset, $offsetend){
    $stranka = file_get_contents($url);
    $array = preg_split("/\r\n|\n|\r/", $stranka);
    $temparr = array();
    foreach($array as $key=>$value){ //kazda radka nactene stranky
        if(strpos($value, $searchfor)>0){           //hledany text existuje
            preg_match_all($regex, $value, $matches, PREG_SET_ORDER, 0);    
            foreach($matches as $matk=>$matv){
                $temparr[] = substr($matches[$matk][0],$offset,$offsetend); //not in array - insert to an array
            }
        }
    }
    return array_values(array_unique($temparr));
}

function intodb($connection,$arrayname,$tablename,$columnname){
    foreach(array_unique($arrayname) as $arraykey=>$arrayvalue){
        $sql = "INSERT IGNORE INTO ".$tablename." (create_time, update_time, ".$columnname.") VALUES ((select current_timestamp()), (select current_timestamp()), LOWER('".$arrayvalue."'))";
        //echo $sql.";<br />\r\n";
        $result = mysqli_query($connection, $sql);
    }
}

$conn = mysqli_connect($servername, $username, $password, $dbname); // Spojení k MySQL
if (!$conn) { // Kontrola spojení s MySQL
  die("Connection failed: " . mysqli_connect_error());
} else { // Připojeno k MySQL
    foreach($tabulky as $tabukey=>$tabuvalue){
        $sqlclean = "TRUNCATE ".$tabuvalue;
        $resultclean = mysqli_query($conn, $sqlclean);
    }

    $sql1 = "SELECT DISTINCT(Website) FROM sources ORDER BY RAND() LIMIT 10";// ORDER BY Website DESC LIMIT 10";
    $resultsql = mysqli_query($conn, $sql1);
    if (mysqli_num_rows($resultsql)>0) {
        while($row = mysqli_fetch_assoc($resultsql)) {
            echo $row["Website"]."<br />\r\n";
            $urlarr = nacti($row["Website"],"divFixedHideMobile",$re,6,-1); //"href="https://www.domena.com"" - edb.cz
            $katalogarr = nacti($row["Website"],"divStrankovacH",$reedb,6,-1); //"href="https://www.edb.cz/katalog-firem/elektro-a-pocitace/?p=2"" - edb.cz
            $mailyarr = nacti($row["Website"],"mailto",$remail,13,-1); //"href="mailto:jmeno.prijmeno@domena.com"" - obecně
            $DB1 = intodb($conn,$urlarr,"urls", "Website");
            $DB2 = intodb($conn,$katalogarr,"sources", "Website");
            $DB3 = intodb($conn,$mailyarr,"emaily", "email");
        }
    }

    mysqli_close($conn); //uzavřít spojení do MySQL
}// Připojeno k MySQL
?>