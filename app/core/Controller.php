<?php
	/**
	 * Controller File. Configure all views on the App
	 */
	class Controller
	{
		public function view($view, $data = [])
		{
			require_once '../view.'.$view.".php";
		}
	}
?>
