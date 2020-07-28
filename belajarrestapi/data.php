<?php
    //include "koneksi.php";
    include "simple_html_dom.php";
    $datap = "Mantap";
    $context = stream_context_create(array(
        'http' => array(
            'header' => array('User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201'),
        ),
    ));
    $url = "https://www.amazon.com/best-sellers-books-Amazon/zgbs/books/ref=zg_bs_nav_0";
    $html = new simple_html_dom();
    $html ->load_file($url,false,$context);
  //$ht = file_get_html("https://www.amazon.com/best-sellers-books-Amazon/zgbs/books/ref=zg_bs_nav_0");
  foreach($html->find("li[class=zg-item-immersion]")as $link){
    $item['nama'] = $link->find("a[class=a-link-normal]",0)->plaintext;
    $item['category'] = $link->find("span[class=a-size-small a-color-secondary]",0)->plaintext;
    $item['grade'] = $link->find("span[class=a-icon-alt]",0)->plaintext;
    $item['writer'] = $link->find("div[class=a-row a-size-small]",0)->plaintext;
    $item['offer'] = $link->find("a[class=a-size-small a-link-normal]",0)->plaintext;
    $item['price'] = $link->find("span[class=p13n-sc-price]",0)->plaintext;
    $item['gambar'] = $link->find("img",0)->src;
    $nama = html_entity_decode(trim($item['nama']));
    $category = html_entity_decode(trim($item['category']));
    $grade = floatval(html_entity_decode(trim($item['grade'])));
    $writer = html_entity_decode(trim($item['writer']));
    $offer = intval(html_entity_decode(trim($item['offer'])));
    $price = floatval(substr(html_entity_decode(trim($item['price'])),1));
    $gambar = html_entity_decode(trim($item['gambar']));
    //die($grade);
    echo $price;
   $connection = mysqli_connect('localhost', 'root', '','amazon');
   $query = "INSERT INTO book (id_book, category, name,grade,writer,offer,price,gambar) VALUES (0, '$category', '$nama',$grade,'$writer',$offer,$price,'$gambar')";
   $result = mysqli_query($connection, $query);
  }

?>
