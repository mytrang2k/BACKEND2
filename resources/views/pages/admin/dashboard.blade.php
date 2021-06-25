@extends('layouts.default')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="card-header">Quản Lý Admin</div>
            <div class="card-body">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
            <a href="{{ route ('product.create') }}" class="btn btn-primary">Add</a>
            <div class="row">
                @foreach($products as $item)
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="{{ asset('storage/images/' . $item->product_image) }}" alt="Card image cap" onclick="getProduct('{{ route('product.productAjax', $item->id) }}')">
                                <div class="card-body">
                                    <h4><a href="{{ route('product.show', ['id' => $item->id, 'slug' =>  Str::slug($item->product_name, '-')]) . '.html' }}">{{ $item['product_name'] }}</a></h4>
                                    <h6><label for="" >Giá: </label> {{ number_format($item['product_price']) }} VNĐ</h6>
                                    <p class="card-text">{{ mb_substr($item['product_description'],0, 100) }}</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <a href="{{ route('product.edit', $item->id) }}" class="btn btn-primary">Edit</a>
                                         <form action="{{ route('product.destroy', $item->id) }}" method="post" onsubmit="return confirm('Do you want to delete ?')">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger">Delete</button>
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
</div>
</div> 
</div>
@endsection
