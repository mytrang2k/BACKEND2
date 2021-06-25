@extends('layouts.default')


@section('content')
<div class="album py-5 bg-light">
    <div class="container">

        @if (session()->get('success'))
        <div class="alert alert-success">
            {{ session()->get('success') }}
        </div>
        @endif

        <div class="row">
            @foreach($products as $item)
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="{{ asset('storage/images/' . $item->product_image) }}" alt="Card image cap" onclick="getProduct('{{ route('product.productAjax', $item->id) }}')">
                <div class="card-body">
                    <h4><a href="{{ route('product.show', ['id' => $item->id, 'slug' =>  Str::slug($item->product_name, '-')]) . '.html' }}">{{ $item->product_name }}</a></h4>
                    <h6> Giá: {{ number_format($item->product_price) }} VNĐ</h6> 
                    <p class="card-text">{{ mb_substr($item->product_description,0, 100) }}</p>
                    <div class="d-flex justify-content-between align-items-center">
                    <form method="POST" action="{{route('cart.add')}}" class="form-inline my-2 my-lg-0" >
                        @csrf
                        <input name="id" type="hidden" value="{{ $item->id }}">
                        <button class="btn btn-success btn-block" type="submit">Add to cart</button>
                    </form>
                    </div>
                </div>
                </div>
            </div>
            @endforeach

        </div>
        {{$products->links()}}
    </div>
</div>

<!-- Modal -->
<script src="{{ asset('js/siteajax.js') }}"></script>

<div class="modal fade" id="productDetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h6 class="modal-title" id="exampleModalLabel">Chi Tiết Sản Phẩm</h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <form method="POST" action="{{route('cart.add')}}" class="form-inline my-2 my-lg-0" >
        @csrf
        <input name="id" type="hidden" value="{{ $item->id }}">
        <button class="btn btn-success btn-block" type="submit">Add to cart</button>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection


