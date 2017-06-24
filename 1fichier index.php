<?php
if(!isset($_GET['a'])) {
die('<form action="" method="get"><input type="text" name="a"/><input type="submit"/></form>');
}
$url = "https://1fichier.com/?" . urlencode($_GET['a']) . "?auth=1&inline";
stream_context_set_default(array(
'http' => array(
'method' => 'GET',
'header' => 'Authorization: Basic ' . 'bXl1c2VyOm15cGFzcw=='
)
));
$headers = get_headers($url, 1);
if ($headers !== false && isset($headers['Location'])) {
$loc = $headers['Location'];
$loc = str_replace("https://", "http://", $loc);
header('Location: ' . $loc, true, 302);
} else {
echo "Failed to unarchive file!";
}
?>
