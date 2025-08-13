<?php

namespace App\Controllers\Admin;

use App\Models\PageModel;
use App\Core\BaseController;

class PageController extends BaseController
{

    private $pageModel;

    public function __construct()
    {
        parent::__construct();
        $this->pageModel = new PageModel();
    }

    public function index() {
        
    }


}
