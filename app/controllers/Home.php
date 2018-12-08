<?php

/**
 * 
 */
class Home extends Controller
{
	// Example
	public function index()
	{
		if(isset($_SESSION['login'])){
			if($_SESSION['karyawan']) header("location:".BASE_URL."karyawan");
			else header("location:".BASE_URL."pemilik");
		}
		// Memanggil file css
		$this->view("templates/header");
		
		// File view utama
		$this->view("index");

		// Memanggil file js
		$this->view("templates/footer");
	}

	public function validate()
	{
		$user = $_POST['username'];
		$pass = $_POST['password'];
		var_dump($user);
		var_dump($pass);
		$result = $this->model('Home_model')->login($user, $pass);
		if ($result != null) {
			$_SESSION['login'] = true;
			if ($result['status'] == "Karyawan") {
				$_SESSION['karyawan'] = true;
				header("location:".BASE_URL."karyawan");
			} else {
				$_SESSION['pemilik'] = true;
				header("location:".BASE_URL."pemilik");
			}
			
			exit;
		}
		else {
			header("location:".BASE_URL);
			exit;
		}
	}

	public function logout()
	{
		session_destroy();
		header("location:".BASE_URL);
	}
}