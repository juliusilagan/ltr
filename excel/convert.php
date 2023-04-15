<?php
/**
* 
*/
class sorter
{
	function __construct($year,$month,$date)
	{
		$this->year = $year;
	}
	public function display(){
		echo "It's " . $this->year;
	}
	public function display2(){
		echo "It's " . $this->year . "Hooray!";
	}
}

$a=new sorter(2020,01,02);
$a->display();
$a->display2();
/*$result_array = array();

$file = fopen("../log_files/log_file.csv","r");
while(! feof($file))
{
	$result_array[] = fgetcsv($file);
}//print_r($result_array);
echo count($result_array);
fclose($file);

for ($i=1; $i < 32 ; $i++) { 
	
}*/
