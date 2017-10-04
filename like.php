<?php


$id = intval($_POST['id']);
$ip = strval($_POST['ip']);
$count = 0;
$message = '';
$error = true;
$result = mysqli_query($connection,"SELECT count(*) FROM likes where articleid=$id and ip='$ip'");
$kol=mysqli_fetch_row($result);
/** Если нам передали ID то обновляем */
if($kol[0]<1){
	/** Обновляем количество лайков в статье */
	$result = mysqli_query($connection," INSERT INTO `likes` (`articleid`, `ip`) VALUES ($id, '$ip') ");
	$error = false;
}else{
	/** Если ID пуст - возвращаем ошибку */
	$result = mysqli_query($connection," DELETE FROM `likes` where articleid=$id and ip='$ip'");
	$error = false;
	$message = 'Статья не найдена';
}
/** Выбираем количество лайков в статье */
	$result = mysqli_query($connection,"SELECT count(*) FROM likes where articleid='$id'");
	$ra=mysqli_fetch_row($result);
	$count = isset($ra[0]) ? $ra[0]  : 0;

/** Возвращаем ответ скрипту */

// Формируем масив данных для отправки
$out = array(
	'error' => $error,
	'message' => $message,
	'count' => $count,
);

// Устанавливаем заголовот ответа в формате json
header('Content-Type: text/json; charset=utf-8');

// Кодируем данные в формат json и отправляем
echo json_encode($out);

