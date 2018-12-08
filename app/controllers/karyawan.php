<?php
    class Karyawan extends Controller 
    {
        public function index()
        {
            $this->view('templates/header');
            $this->view('templates/menu');
            $this->view('karyawan/penjualan');
            $this->view('templates/footer');
        }
    }