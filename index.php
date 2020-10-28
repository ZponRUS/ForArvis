<?
require 'db.php';
$db = new db;
$brances = $db->getAllBranchesIds();
?>

<!DOCTYPE html>
<html>
<head>
	<title>Arvis</title>
</head>
<body>
	<center>
		<select class="brances">
			<?
				foreach ($brances as $branc) {
					print("<option value=".$branc['id'].">".$branc['name']."</option>");
				}
			?>
			
		</select>
		<input type="button" name="button" value="Подробнее" onclick="f()"><br>
		<p id="description"></p>
		<table id="table" border="1">

		</table>		
	</center>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript">

	function f(){
		
		var s = document.getElementsByClassName('brances')[0]
		var id = s.options[s.options.selectedIndex].value;

		$('#description').text(<?=json_encode($brances)?>[s.options.selectedIndex]['description']);
		
		$.ajax({
			url: '/ajax.php',
			method: 'post',
			dataType: 'json',
			data: {id: id},
			success: function(data){
				console.log(data);

				var k = 1;
				$('#table').html("<caption>Сотрудники Филиала</caption><tbody><tr><th>#</th><th>ИТР</th><th>Профессия</th><th>ФИО</th></tr>")
				data.forEach(function(item, i, arr){
					console.log(item['fio']);
					if(item['is_itr'] == 1){
						var itr = "Да";
					}else{
						var itr = "Нет";
					}
					$('#table').append("<tr><td>"+(k++)+"</td><td>"+itr+"</td><td>"+item['profession']+"</td><td>"+item['fio']+"</td></tr>");
				});
			}
		});
	}
</script>
</html>