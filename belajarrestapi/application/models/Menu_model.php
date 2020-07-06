<?php
/**
 *
 */
class Menu_model extends CI_Model
{
  public function getallbook()
  {
    return $this->db->get('book')->result_array();
  }
  public function getMenubook($category=null)
  {
    if($category==null)
    {
      return $this->db->get('book')->result_array();
    }
    else {
      $this->db->like('category', $category);
      return $this->db->get('book')->result_array();
    }
  }
  public function getnamabook($name=null)
  {
    if($name==null)
    {
      return $this->db->get('book')->result_array();
    }
    else {
      $this->db->like('name', $name);
      return $this->db->get('book')->result_array();
    }
  }
  public function getbook($minprice=null,$maxprice=null)
  {
    if($minprice==null&&$maxprice==null)
    {
      return $this->db->get('book')->result_array();
    }
    else {
      //$this->db->like('name', $name);
      $this->db->where('price >=', $minprice);
      $this->db->where('price <=', $maxprice);
      return $this->db->get('book')->result_array();
    }
  }
  public function getPricebook($minprice=null,$maxprice=null)
  {
    if($minprice==null&&$maxprice==null)
    {
      return $this->db->get('book')->result_array();
    }
    else {
      //$this->db->like('name', $name);
      $this->db->where('price >=', $minprice);
      $this->db->where('price <=', $maxprice);
      return $this->db->get('book')->result_array();
    }
  }
  public function getminpricebook($minprice=null)
  {
    if($minprice==null)
    {
      return $this->db->get('book')->result_array();
    }
    else {
      //$this->db->like('name', $name);
      $this->db->where('price >=', $minprice);
      //$this->db->where('price <=', $maxprice);
      return $this->db->get('book')->result_array();
    }
  }
  public function getnameminbook($name=null,$minprice=null)
  {
    if($minprice==null)
    {
      return $this->db->get('book')->result_array();
    }
    else {
      $this->db->like('name', $name);
      $this->db->where('price >=', $minprice);
      //$this->db->where('price <=', $maxprice);
      return $this->db->get('book')->result_array();
    }
  }
  public function getnamepricebook($name=null,$minprice=null,$maxprice=null)
  {
    if(isset($name)&&isset($minprice)&&isset($maxprice)){
      $query = $this->db->query("SELECT * from book WHERE name like '%$name%' and price between '$minprice' and '$maxprice'");
      return $query->result_array();
    }
  }

}

 ?>
