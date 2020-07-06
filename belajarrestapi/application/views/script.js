$('#Cari').on('click',function(){
  $('#tabel').html('');
  $.ajax({
    url : 'http://localhost/api/menubuku',
    type: 'get',
    dataType:'json',
    data: {
      'category' : $('#category').val(),
      'name' : $('#name').val(),
      'minprice' : $('#minprice').val(),
      'maxprice': $('#maxprice').val()
    },
    success: function(hasil)
    {
      if(hasil.status == true)
      {
        let menu = hasil.data;
        $.each(menu,function(i,data){
          $('#tabel').append(`<tr>
            <th scope="row">`+data.id_book+`</th>
            <td>`+data.name+`</td>
            <td>`+data.category+`</td>
            <td>`+data.grade+`</td>
            <td>`+data.writer+`</td>
            <td>`+data.offer+`</td>
            <td>`+data.price+`</td>
            <td><img src="`+data.gambar+`" class="img-thumbnail" style="height:200px;width:200px"></td>
          </tr>`);
        });
        $('#category').val('');
        $('#name').val('');
        $('#minprice').val('');
        $('#maxprice').val('');
      }
      else {
        $('#tabel').html(`<h1> Data Not Found </h1>`);
      }
    },
    error:function(hasil)
    {
      if(hasil.status != true)
      {
        $('#tabel').html(`<h1> Data Not Found </h1>`);
      }
    }
  });
});
