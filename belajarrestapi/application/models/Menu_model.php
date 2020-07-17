<?php
/**
 *
 */

class Menu_model extends CI_Model
{

  public function updatebook()
  {
    $data = file_get_contents('application/controllers/api/tes.json');
    $menu = json_decode($data,true);
    $menu = $menu["gambar"];
    foreach ($menu as $row):
      if(isset($row["writer"])||isset($row["offer"])||isset($row["grade"])||isset($row["price"]))
      {
        if(isset($row["writer"])){
          if(isset($row["grade"]))
          {
            $data = array(
              'id_book' =>'',
              'category' => $row["category"],
              'name'  => $row["name"],
              'grade'  => $row["grade"],
              'writer' => $row["writer"],
              'offer'  => $row["offer"],
              'price'  => substr($row["price"],1,strlen($row["price"])),
              'gambar'  => $row["image"]
              );
          }
          else {
            if(isset($row["offer"]))
            {
              $data = array(
                'id_book' =>'',
                'category' => $row["category"],
                'name'  => $row["name"],
                'grade'  => 0,
                'writer' => $row["writer"],
                'offer'  => $row["offer"],
                'price'  => substr($row["price"],1,strlen($row["price"])),
                'gambar'  => $row["image"]
                );
            }
            else {
              $data = array(
                'id_book' =>'',
                'category' => $row["category"],
                'name'  => $row["name"],
                'grade'  => 0,
                'writer' => $row["writer"],
                'offer'  => '',
                'price'  => substr($row["price"],1,strlen($row["price"])),
                'gambar'  => $row["image"]
                );
            }

          }
        }
        else
        {
          $data = array(
            'id_book' =>'',
            'category' => $row["category"],
            'name'  => $row["name"],
            'grade'  => $row["grade"],
            'writer' => '',
            'offer'  => $row["offer"],
            'price'  => substr($row["price"],1,strlen($row["price"])),
            'gambar'  => $row["image"]
            );
        }
      }
      else if(isset($row["grade"]))
      {
        $data = array(
          'id_book' =>'',
          'category' => $row["category"],
          'name'  => $row["name"],
          'grade'  => $row["grade"],
          'writer' => $row["writer"],
          'offer'  => $row["offer"],
          'price'  => substr($row["price"],1,strlen($row["price"])),
          'gambar'  => $row["image"]
          );
      }
      else {
        $data = array(
          'id_book' =>'',
          'category' => $row["category"],
          'name'  => $row["name"],
          'grade'  => 0,
          'writer' => '',
          'offer'  => 0,
          'price'  => 0,
          'gambar'  => $row["image"]
          );
      }

        $query = $this->db->set($data)->get_compiled_insert('book');
        $this->db->query($query);
    endforeach;

    }
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
