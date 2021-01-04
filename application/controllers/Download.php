<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Download extends CI_Controller {
    
    function __construct(){
        parent::__construct();				
    }

    public function index(){		
        force_download('_assets/apk/SCC.apk',NULL);
    }
}
