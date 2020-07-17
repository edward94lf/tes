<?php
/**
 *
 */
 defined('BASEPATH') OR exit('No direct script access allowed');

 // This can be removed if you use __autoload() in config.php OR use Modular Extensions
 /** @noinspection PhpIncludeInspection */
 require APPPATH . '/libraries/REST_Controller.php';

 // use namespace
use Restserver\Libraries\REST_Controller;

class menubuku extends REST_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('Menu_model','menu');
  }

  public function index_get()
  {
    $category = $this->get('category');
    $minprice = $this->get('minprice');
    $maxprice = $this->get('maxprice');
    $name = $this->get('name');
    if($category==null)
    {
      if($name==null)
      {
        if($minprice==null&&$maxprice==null)
        {
          $menubuku=$this->menu->getallbook();
        }
        else if(isset($minprice))
        {
          if($maxprice==null)
          {
            $menubuku=$this->menu->getminpricebook($minprice);
          }
          else
          {
            $menubuku=$this->menu->getPricebook($minprice,$maxprice);
          }
        }
        else if(isset($maxprice))
        {
          if($minprice==null)
          {
            $minprice = $maxprice;
            //die($minprice);
            $menubuku=$this->menu->getminpricebook($minprice);
          }
        }
      }
      else if(isset($name)) {
        if($minprice==null&&$maxprice==null)
        {
          $menubuku=$this->menu->getnamabook($name);
        }
        else if(isset($minprice))
        {
          if($maxprice==null)
          {
            $menubuku=$this->menu->getnameminbook($name,$minprice);
          }
          else
          {
            $menubuku=$this->menu->getnamepricebook($name,$minprice,$maxprice);
          }
        }
      }
    }
    else {
      $menubuku=$this->menu->getMenubook($category);
    }
    /*if(isset($name)&&isset($minprice)&&isset($maxprice))
    {
      $menubuku=$this->menu->getnamepricebook($name,$minprice,$maxprice);
    }
    if($name==null&&isset($minprice)&&isset($maxprice))
    {
      $menubuku=$this->menu->getPricebook($minprice,$maxprice);
    }
    if($category==null&&$minprice==null&&$maxprice==null&&$name==null){
      $menubuku=$this->menu->getallbook();
    }
    if(isset($name))
    {
      $menubuku=$this->menu->getnamabook($name);
    }
    if(isset($minprice)&&isset($maxprice))
    {
      $menubuku=$this->menu->getbook($minprice,$maxprice);
    }
    */

    if($menubuku)
    {
      $this->response([
        'status' => TRUE,
        'data' => $menubuku
      ], REST_Controller::HTTP_OK);
    }
    else
    {
      $this->response([
        'status' => FALSE,
        'message' => "Data Not Found"
      ], REST_Controller::HTTP_NOT_FOUND);
    }
  }
  public function index_post()
  {

      $menubuku = $this->menu->updatebook();
      $message = [
          'message' => 'All Resources Added'
      ];
      $this->set_response($message, REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code

  }

}
