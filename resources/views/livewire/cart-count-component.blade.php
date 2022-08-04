<div>
    <div class="wrap-icon-section minicart">
        <a href="{{ route('product.cart') }}" class="link-direction">
            <i class="fa fa-shopping-basket" aria-hidden="true"></i>
            <div class="left-info">
                <!--so luong san pham trong gio hang -->
                @if(Cart::instance('cart')->count()>0)
                <span class="index">{{Cart::instance('cart')->count()}} Items</span>
                @endif
                <span class="title">CART</span>
            </div>
        </a>
    </div>
</div>
