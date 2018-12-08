<?php
    class Pemilik extends Controller 
    {
        public function index()
        {
            $this->view('templates/header');
            $this->view('templates/menu');
            $this->view('pemilik/penjualan');
            $this->view('templates/footer');
        }
    }
    