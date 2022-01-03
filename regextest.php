<?php
set_time_limit(0);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kontakty";
$subst = '';
$masterurl = "https://www.edb.cz/katalog-firem/";
$page = file_get_contents($masterurl);
$re = '/(href=\"(http|https)\:\/\/(\w{1,63}\.){1,2}\w{1,10}((\/[a-zA-Z0-9\-]{1,63}){0,6})(\s{0}|\/[a-zA-Z0-9\-]{1,63}|\/[a-zA-Z0-9\-]{1,63}\/|\/|\/\?.\=[0-9]{1,3})\")/im';
$reedb = '/((href\=\"){1}(http|https)(\:\/\/){1}([a-zA-Z-]{1,63}\.){1,2}([a-zA-Z-]{1,10}\/){1}([a-zA-Z0-9\-\_]{1,63}\/|[a-zA-Z0-9\-\_]{1,63}|){1,8}(\?.\=[0-9]{1,4}|0{0})\")/im'; //https://regex101.com/r/924n4w/1
$remail = '/(href=\"(mailto:){1}[a-zA-Z0-9\-\.\_\+]{1,63}\@{1}[a-zA-Z0-9\-\.\_\+]{1,63}){1,3}\.[a-zA-Z0-9\-\.\_\+]{1,10}\"/im';

function nacti($url, $searchfor, $regex, $offset, $offsetend){
    $curl_handle=curl_init();
    curl_setopt($curl_handle, CURLOPT_URL,$url);
    curl_setopt($curl_handle, CURLOPT_CONNECTTIMEOUT, 2);
    curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl_handle, CURLOPT_USERAGENT, 'Google Chrome x64, v96.0.'.rand(967,4650).'.'.rand(167,950));
    $page = curl_exec($curl_handle);
    $array = preg_split("/\r\n|\n|\r/", $page);
    curl_close($curl_handle);
    $temparr = array();
    foreach($array as $key=>$value){ //each row of page loaded
        if(strpos($value, $searchfor)>0){           //searched text found
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
        if(substr($arrayvalue,-8) == "/kontakt"){
            $sql = "INSERT IGNORE INTO ".$tablename." (create_time, update_time, ".$columnname.") VALUES ((select current_timestamp()), (select current_timestamp()), LOWER('".substr($arrayvalue,0,-8)."'))";
        } else {
            $sql = "INSERT IGNORE INTO ".$tablename." (create_time, update_time, ".$columnname.") VALUES ((select current_timestamp()), (select current_timestamp()), LOWER('".$arrayvalue."'))";
        }        
        $result = mysqli_query($connection, $sql);
    }
}

$conn = mysqli_connect($servername, $username, $password, $dbname); // MySQL connection
if (!$conn) { // Check of MySQL connection
  die("Connection failed: " . mysqli_connect_error());
} else { // MySQL connected
    $sql1 = "SELECT DISTINCT(Website) FROM sources ORDER BY RAND() LIMIT 20";// ORDER BY Website DESC LIMIT 10";
    $resultsql1 = mysqli_query($conn, $sql1);
    if (mysqli_num_rows($resultsql1)>0) {
        while($row = mysqli_fetch_assoc($resultsql1)) {
            echo $row["Website"]."<br />\r\n";
            $urlarr = nacti($row["Website"],"divFixedHideMobile",$re,6,-1); //"href="https://www.domain.com"" - searching for HTML element class name
            $DB1 = intodb($conn,$urlarr,"urls", "Website");
            $katalogarr = nacti($row["Website"],"divStrankovacH",$reedb,6,-1); //"href="https://www.edb.cz/katalog-firem/elektro-a-pocitace/?p=2"" - searching for HTML element class name
            $DB2 = intodb($conn,$katalogarr,"sources", "Website");
            $mailyarr = nacti($row["Website"],"mailto",$remail,13,-1); //"href="mailto:firstname.surname@domain.com"" - in general            
            $DB3 = intodb($conn,$mailyarr,"emaily", "email");
        }
    } else { //loading of initial source URLs without data in sources table at DB
        $urlarr = nacti($masterurl,"divLevy",$re,6,-1); //"href="https://www.domain.com"" - searching for HTML element class name;
        $DB1 = intodb($conn,$urlarr,"sources", "Website");
        $urlarr = nacti($masterurl,"divStredni",$re,6,-1); //"href="https://www.domain.com"" - searching for HTML element class name;
        $DB2 = intodb($conn,$urlarr,"sources", "Website");
        $urlarr = nacti($masterurl,"divPravy",$re,6,-1); //"href="https://www.domain.com"" - searching for HTML element class name;
        $DB3 = intodb($conn,$urlarr,"sources", "Website");
    }

    $sql2 = "SELECT DISTINCT(Website) FROM urls";// ORDER BY Website DESC LIMIT 10";
    $resultsql2 = mysqli_query($conn, $sql2);
    if (mysqli_num_rows($resultsql2)>0) {
        while($row2 = mysqli_fetch_assoc($resultsql2)) {
            $mailyarr2 = nacti($row2["Website"],"mailto",$remail,13,-1); //"href="mailto:firstname.surname@domain.com"" - in general            
            $DB4 = intodb($conn,$mailyarr2,"emaily", "email");
        }
    }

    mysqli_close($conn); //close MySQL connection
}// MySQL connected
?>