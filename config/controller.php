<?php
	/**
	 * Controller File. Configure all views on the App
	 */
	public class Controller
	{
		function __construct()
		{
			include 'database.php';
			include 'model.php';
			include 'library.php';
		}
	}
?>