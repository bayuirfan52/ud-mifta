<?php
	/**
	 * Controller File. Configure all views on the App
	 */
	class Controller
	{
		public function view($view, $data = [])
		{
			require_once 'app/view/'.$view.".php";
		}

		public function model($model)
		{
			require_once 'app/view/'.$model.".php";
			return new $model;
		}
	}
?>
