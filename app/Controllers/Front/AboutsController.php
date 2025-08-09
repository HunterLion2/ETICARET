<?php

namespace App\Controllers\Front;

use App\Core\BaseController;
use App\Models\AboutModel;

/**
 * AboutsController sınıfı, hakkında sayfası ile ilgili işlemleri yönetir.
 */
class AboutsController extends BaseController
{
    /** 
     * @var AboutModel $aboutModel Hakkında bilgilerini yöneten model
     */
    protected $aboutModel; // protected olarak tanımlanan değere class dışarısından erişilemez. 
    // ama alt sınıflarda kullanılabilir yani eğer bir başka class'a AboutsController değeri extends edilirse o zaman mirasçı olduğu için bu değerleri kullanabilir hale geliriz.

    /**
     * AboutsController constructor.
     * AboutModel örneğini oluşturur ve BaseController'ın yapıcı metodunu çağırır.
     */
    public function __construct()
    {
        parent::__construct(); // Burada ki parent değeri ile yukarıda çağırdığımız BaseController'ın construct() değerini çağırmış oluruz.
        $this->aboutModel = new AboutModel();
    }

    /**
     * Hakkında sayfasını görüntüler.
     */
    public function index()
    {
        // AboutModel'i kullanarak verileri al
        $about = $this->aboutModel->getAbout();

        // Verileri view'a gönder
        $this->render('front/abouts', [
            'about' => $about
        ]);
    }
}