<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';

/**
 * This is an example of a few basic user interaction methods you could use
 * all done with a hardcoded array
 *
 * @package         CodeIgniter
 * @subpackage      Rest Server
 * @category        Controller
 * @author          Phil Sturgeon, Chris Kacerguis
 * @license         MIT
 * @link            https://github.com/chriskacerguis/codeigniter-restserver
 */
class Resume extends REST_Controller {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();

        // Configure limits on our controller methods
        // Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
        $this->methods['users_get']['limit'] = 500; // 500 requests per hour per user/key
        $this->methods['users_post']['limit'] = 100; // 100 requests per hour per user/key
        $this->methods['users_delete']['limit'] = 50; // 50 requests per hour per user/key
        $this->load->model('M_resume');
    }

    public function index_get()
    {
        $person = $this->M_resume->get_person()->row();
        $socmed = $this->M_resume->get_socmed()->result();
        $bio = $this->M_resume->get_bio()->row();
        $education = $this->M_resume->get_education()->result();
        $experience = $this->M_resume->get_experience()->result();
        $skill = $this->M_resume->get_skill();
        $data = array(
            'person' => $person,
            'about' => $bio,
            'social_media' => $socmed,
            'education' => $education,
            'experience' => $experience,
            'skill'=> $skill,

         );
        $this->set_response($data, REST_Controller::HTTP_OK);
    }

    public function info_get()
    {
       $data = $this->M_resume->get_resume();
       $this->set_response($data, REST_Controller::HTTP_OK);
    }

   

}
