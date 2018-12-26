<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

class Upload extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $data['error'] = "";
        $this->load->view('upload', $data);
    }

    public function upload_file()
    {
        $config['upload_path']          = './assets/img/';
        $config['allowed_types']        = 'gif|jpg|jpeg|png|pdf|doc';
        $config['max_size']             = 1000;
        $config['max_width']            = 1300;
        $config['max_height']           = 1024;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('userfile'))
        {

            $this->form_validation->set_error_delimiters('<p class="error">', '</p>');

            $error = array('error' => $this->upload->display_errors());

            $this->load->view('upload', $error);
        }
        else
        {
            $data = array('upload_data' => $this->upload->data());

            $this->load->view('success', $data);
        }
    }
}