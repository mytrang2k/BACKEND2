@extends('layouts.default')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <img src="{{ asset('storage/images/' . $item->product_image) }}" alt="Card image cap" class="img-fluid">
        </div>
        <div class="col-md-8">
            <h1>{{ $item->product_name }}</h1>
            <h6> Giá: {{ number_format($item->product_price) }} VNĐ</h6> 
            <div class="description-edit">
                <p>{{ $item->product_description }}</p>
            </div> 

            <div class="titleComment">
            <p>Bình luận về sản phẩm: </p>
            </div>
            <div class="titleComment">
            <ul>
            @foreach ($comments as $comment)
                <li>{{ $comment->comment_content }}</li>
            @endforeach
            </ul>
           </div>
            <form action="{{ route('comment.store') }}" method="post">
                @csrf
                <div class="form-group">
                    <textarea name="comment_content" id="comment_content" class="form-control" placeholder="Bình luận........"></textarea>
                    <input type="hidden" name="product_id" value="{{ $item->id }}"> <br>
                    <button class="btn btn-primary" type="submit">Comment</button>
                </div>
            </form>
          
    </div>
</div>
@endsection