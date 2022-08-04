<div>
    <div>
        <main id="main" class="main-site">
            <div class="container">

                <div class="wrap-breadcrumb">
                    <ul>
                        <li class="item-link"><a href="/" class="link">Home</a></li>
                        <li class="item-link"><span>Detail News</span></li>
                    </ul>
                </div>
                <div class="row">

                    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 main-content-area">
                        <div class="wrap-product-detail">
                            <div class="detail-media">
                                <div class="product-gallery">
                                    <ul class="slides">

                                        <li data-thumb="{{asset('assets/images/news/')}}/{{$news->image}}">
                                            <img src="{{asset('assets/images/news/')}}/{{$news->image}}" alt="{{$news->name }}" />
                                        </li>
                                    </ul>
                                </div>
                            </div>

                                <h2 class="product-name">{{$news->name}}</h2>
                                <div class="short-desc">
                                    <ul>
                                        {!! $news->short_description !!}
                                    </ul>
                                </div>

                            <div class="advance-info">
                                <div class="tab-control normal">
                                    <a href="#description" class="tab-control-item active">Description</a>
                                </div>
                                <div class="tab-contents">
                                    <div class="tab-content-item active" id="description">
                                        {!! $news->description !!}
                                    </div>

                                    <div class="tab-content-item " id="review">

                                        <div class="wrap-review-form">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--end main products area-->

                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 sitebar">
                        <div class="widget widget-our-services ">
                            <div class="widget-content">
                                <ul class="our-services">

                                    <li class="service">
                                        <a class="link-to-service" href="#">
                                            <i class="fa fa-truck" aria-hidden="true"></i>
                                            <div class="right-content">
                                                <b class="title">Free Shipping</b>
                                                <span class="subtitle">On Oder Over $99</span>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="service">
                                        <a class="link-to-service" href="#">
                                            <i class="fa fa-gift" aria-hidden="true"></i>
                                            <div class="right-content">
                                                <b class="title">Special Offer</b>
                                                <span class="subtitle">Get a gift!</span>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="service">
                                        <a class="link-to-service" href="#">
                                            <i class="fa fa-reply" aria-hidden="true"></i>
                                            <div class="right-content">
                                                <b class="title">Order Return</b>
                                                <span class="subtitle">Return within 7 days</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div><!-- Categories widget-->

                        <div class="widget mercado-widget widget-product">
                            <h2 class="widget-title"> Popular News</h2>
                            <div class="widget-content">
                                <ul class="products">
                                    @foreach($popular_new as $p_product)
                                        <li class="product-item">
                                            <div class="product product-widget-style">
                                                <div class="thumbnnail">
                                                    <a href="{{route('news.details',['slug'=>$p_product->slug])}}" title="{{$p_product->name}}">
                                                        <figure><img src="{{asset('assets/images/news')}}/{{$p_product->image}}" alt="{{$p_product->name}}"></figure>
                                                    </a>
                                                </div>
                                                <div class="product-info">
                                                    <a href="{{route('news.details',['slug'=>$p_product->slug])}}" class="product-name"><span>{{$p_product->name}}</span></a>

                                                </div>
                                            </div>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>

                    </div><!--end sitebar-->




                </div><!--end row-->

            </div><!--end container-->

        </main>
    </div>

</div>
