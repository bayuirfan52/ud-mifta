<?php
	class Model{
		
		private $servername = DB_HOST;
		private $username = DB_USER;
		private $password = DB_PASS;
		private $database = DB_NAME;

		private $dbh;
		private $statement;

		public function __construct()
		{
			$dsn = 'mysql:host='. $this->servername .';dbname='.$this->database;

			$option = [
				PDO::ATTR_PERSISTENT => true,
				PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
			];

			try{
				$this->dbh = new PDO($dsn,$this->username,$this->password,$option);
			}catch(PDOException $e){
				die($e->getMessage());
			}
		}

		public function query($query)
		{
			$this->statement = $this->dbh->prepare($query);
		}

		public function bind($param, $value, $type = null)
		{
			if(is_null($type)){
				switch(true){
					case is_int($value) :
						$type = PDO::PARAM_INT;
						break;
					case is_bool($value) :
						$type = PDO::PARAM_BOOL;
						break;
					case is_null($value) :
						$type = PDO::PARAM_NULL;
						break;
					default :
						$type = PDO::PARAM_STR;
				}
			}

			$this->statement->bindValue($param,$value,$type);
		}

		public function execute()
		{
			$this->statement->execute();
		}

		public function resultSet()
		{
			$this->execute();
			return $this->statement->fetchAll(PDO::FETCH_ASSOC);
		}

		public function single()
		{
			$this->execute();
			return $this->statement->fetch(PDO::FETCH_ASSOC);
		}
	}
?>