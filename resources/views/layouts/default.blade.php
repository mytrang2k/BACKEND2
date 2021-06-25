<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>D&T</title>
      <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/style_index.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style_header.css') }}">
    <link rel="stylesheet" href="{{ asset('fontawesome/css/all.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>
  <body>

    <header class="menu-area">
      <nav class="navbar navbar-expand-sm navbar-dark bg-dark mainmenu">
        <a class="navbar-brand" href="{{ url('/') }}">D&T</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
            aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            @foreach ($parentCategories as $category)
            <li class="nav-item dropdown">
              @php
              $txtDropdown = 'class="nav-link"';
			        $isDropdown = false;
              if(count($category->subcategories))
              {
                $isDropdown = true;
                $txtDropdown = 'class="nav-link dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"';
              }
              @endphp
              
              <a {!! $txtDropdown !!} href="{{ route('category.show', $category->id) }}" id="cat{{ $category->id }}">{{ $category->category_name }}</a>
              @if($isDropdown)
                  @include('layouts.partials.subCategoryList',['subcategories' => $category->subcategories])
              @endif 
            </li>
            @endforeach
            
          </ul>
          <form class="form-inline my-2 my-lg-0" method="GET" action=" {{ route('search') }}">
            <input class="form-control mr-sm-2" value= "" name = "key" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
               @if (Route::has('login'))
              
                  @if (Auth::check())
                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                      {{ Auth::user()->name }} <span class="caret"></span>
                  </a>

                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="{{ route('logout') }}"
                          onclick="event.preventDefault();
                                        document.getElementById('logout-form').submit();">
                          {{ __('Logout') }}
                      </a>

                      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                          @csrf
                      </form>
                  </div>
                  @else
                      <a href="{{ url('/login') }}">Login</a>
                      <a href="{{ url('/register') }}">Register</a>
                  @endif
            @endif
          <a class="btn btn-success btn-sm ml-3" href="{{route('cart.checkout')}}">
              <i class="fa fa-shopping-cart"></i>
           {{Cart::getTotalQuantity()}}
          </a>
        </div>
      </nav>
    </header>

    <main role="main">
        @include('layouts.partials.messages')
        @yield('content')
    </main>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-6 footer_pd">
                    <div class="footer_item">
                        <ul class="form_text">
                            <h3>Dành cho người dùng</h3>
                            <li><a href="#" title="Hướng dẫn thanh toán" class="smooth hvnau fs16">Hướng dẫn thanh toán</a></li>
                            <li><a href="#" title="Chính sách bảo mật thông tin" class="smooth hvnau fs16">Chính sách bảo mật thông tin</a></li>
                            <li><a href="#" title="Chính sách đổi trả" class="smooth hvnau fs16">Chính sách đổi trả</a></li>
                            <li><a href="#" title="Chính sách vận chuyển" class="smooth hvnau fs16">Chính sách vận chuyển</a></li>
                            <li><a href="#" title="Chính sách bảo hành sản phẩm" class="smooth hvnau fs16">Chính sách bảo hành sản phẩm</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-6 footer_pd">
                    <div class="footer_item">
                        <form action="#" method="POST">
                            <h3>Newsletter</h3>
                            <p class="form_text">Receive a 10% discount code via email when you sign up for our Store offers &amp; updates.</p>
                            <p><input type="email" name="Email" placeholder="Enter your email"></p>
                            <p><button type="submit" class="btn">Subscribe</button></p>
                        </form>
                    </div>
                </div>
            </div>
            <div class="footer_last">
                <div class="row">
                    <div class="col-md-6">
                        © 2019.<a href="#">POWERED BY SHOP</a>
                    </div>
                    <div class="col-md-6">
                        <ul class="footer_payments">

                            <li><i class="fab fa-cc-mastercard" aria-hidden="true"></i></li>

                            <li><i class="fab fa-cc-paypal" aria-hidden="true"></i></li>

                            <li><i class="fab fa-cc-visa" aria-hidden="true"></i></li>

                        </ul>
                    </div>
                </div>
                <div class="to-top">
                    <a id="back_top" href="#">
                        <i class="fa fa-angle-up" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
        </div>
    </footer>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/popper.min.js"></script>
    <script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>
    <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/holder.min.js"></script>
    <script src="{{ asset('js/site.js') }}"></script>
  </body>
</html>
