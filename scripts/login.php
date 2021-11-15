<?php 

	require 'conexion.php';

	$user=$_POST['user'];
	$pass=$_POST['pass'];

	if (empty($user) && empty($pass)) {
		echo "usuario y contraseña vacio";
	}else{

	$consulta = "SELECT * FROM user WHERE name_user='".$user."' AND pass_user='".$pass."'";
	$respuesta = mysqli_query($con, $consulta);
		if( $fila = mysqli_fetch_row($respuesta) ){
			session_start();
			$_SESSION['user'] = $user;
			$_SESSION['type_user'] = $fila[3];

			if ($_SESSION['type_user']==1) {
			header('Location: ../admin.php');
			} else {
				header('Location: ../user.php');
			}
		}
	}
?>
<script>
	alert('Los datos ingresados son incorrectos.')
	location.href = "../index.html";
</script>
