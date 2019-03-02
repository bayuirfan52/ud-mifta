<?php
    class Karyawan extends Controller 
    {
        public function __construct()
        {
            if (!isset($_SESSION['login'])) {
                header('location:'.BASE_URL);
            }
        }

        public function index()
        {
            $this->view('templates/header');
            $this->view('templates/menu');
            $this->view('karyawan/penjualan');
            $this->view('templates/footer');
        }
    }