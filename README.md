# UD MIFTA - Toko Subagyo

Tugas Sistem Informasi Manajemen.
Kontributor : 

Denis Darwa S

Sekar Minati

Nur Laila

Maghfira Izzani

Intan Pradina

Muhammad Bayu Irfan Pratama

### Bahasa pemrograman : PHP (AJAX Support), Javascript (Jquery support)

### Database : MySQL (MariaDB)

## UML dan DFD
Akses link berikut untuk mengetahui gambaran program
	https://drive.google.com/file/d/1Umq-1GWvWp8XrQCtu2f8MmVFvB0Z3AeA/view?usp=sharing

## Penjelasan Program
Program dibagi ke dalam beberapa folder yang masing-masing seharusnya memiliki fungsi sendiri. Mohon perhatikan pembagian folder dibawah ini.

Folder AJAX : Digunakan untuk menghandle live search. 

Folder Assets : Letakkan file css untuk tampilan kedalam folder css yang disediakan, dan program javascript kedalam folder js. 

Folder img : untuk meletakkan semua gambar yang dibutuhkan.

Folder App : Terdiri dari beberapa folder khusus yang memiliki fungsi masing-masing. Program menerapkan MVC
	
membuat controller silakan diletakkan pada folder controllers dan membuat class seperti contoh berikut
	
		<?php>
		class Example extends Controller{
			public function index(){
				#your view or logical code here..
				
				$this->model('ModelName_model')->modelFunction(); //Cara memanggil model
				
				$this->view('templates/header');
				$this->view('templates/menu'); //Jika ingin menggunakan dashboard menu
				
				$this->view('yourViewName');
				
				$this->view('templates/footer');
			}
		}
	
membuat model silakan diletakkan pada folder models dengan nama seperti Example_model (diberikan _model untuk membedakan dengan class Model pada folder core) dengan contoh sebagai berikut

		<?php>
		class Example_model extends Model{
			public function selectFunctionExample($params){
				$selectExample = "SELECT * FROM yourTableName WHERE column = :valueName";
				
				$this->query($selectExample);
				
				$this->bind('valueName',$params); //mengisikan nilai pada :valueName
				
				return $this->single(); //Kalau ingin menampilkan 1 baris nilai saja
			}

			public function insertFunctionExample($params){
				$insertExample = "INSERT INTO yourTableName VALUES :valueName, :valueName2";
				
				$this->query($insertExample);
				
				$this->bind('valueName',$params['arrayIndex']); //mengisikan nilai pada :valueName
				
				$this->bind('valueName',$params['arrayIndex2']);//mengisikan nilai pada :valueName2

				return $this->rowCount();
			}

			public function deleteFunctionExample($id){
				$deleteExample = "DELETE FROM yourTableName WHERE column = :id";
				
				$this->query($deleteExample);
				
				$this->bind('id',$id); //mengisikan nilai pada :id

				return $this->rowCount();
			}

			public function updateFunctionExample($params){
				$updateExample = "UPDATE yourTableName SET 
										column = :valueName
										WHERE columnId = :id";
				
				$this->query(updateExample);
				$this->bind('valueName',$params['value']); //mengisikan nilai pada :valueName
				$this->bind('id',$params['id']); //mengisikan nilai pada :id

				return $this->rowCount();
			}
		}

Folder View : Tampilan yang telah dibuat, silakan diletakkan di folder ini.
untuk membuat viewsnya cukup dengan
		
		
			<link rel="stylesheet" href=""> <!-- Jika ada tambahan file css -->
		
		</head>
		<body>
		
			<!-- silakan tulis kode html atau php disini -->
		
		</body>
		
		<script src=""> <!-- Jika ada tambahan file js -->

## Attention
Import ud_mifta.sql terlebih dahulu ke dalam database. Gunakan nama database yang sama dengan file tersebut. Selalu eksport database yang sudah dikembangkan agar sistem selalu update.
Kode program masih kosong. Mohon kembangkan sistem utama terlebih dahulu agar program lebih dinamis.

## Status Progress Program
Membuat Views, Controller, dan Model sesuai kebutuhan.

Materi bisa lihat di Youtube Channel Web Programming UNPAS mengenai MVC PHP
