<?php

/**
 * 
 */
class Home extends Controller
{
	// Example
	public function index()
	{
		// Memanggil file css
		$this->view("templates/header");
		
		// File view utama
		$this->view("home/index");

		// Memanggil file js
		$this->view("templates/footer");
	}
}