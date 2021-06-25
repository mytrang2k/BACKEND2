function getProduct(routeProduct) {
    $.ajax({
        type: "GET",
        url: routeProduct,
        dataType: 'json',
        success: function(response) {
            $('#productDetail .modal-body').html(`
            <h2>${response.product_name}</h2>
			<img src="storage/images/${response.product_image}" class="img-fluid">
            <h6>${'Giá: '+ response.product_price + ' VNĐ'}</h6>
            <p>${response.product_description}</p>            
            `);
            $('#productDetail').modal('toggle');
        }
    });

}