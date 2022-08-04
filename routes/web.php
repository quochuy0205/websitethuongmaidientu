<?php

use App\Http\Livewire\Admin\AdminAddCategoryComponent;
use App\Http\Livewire\Admin\AdminCategoryNewsComponent;
use App\Http\Livewire\Admin\AdminAddCouponComponent;
use App\Http\Livewire\Admin\AdminAddHomeSliderComponent;
use App\Http\Livewire\Admin\AdminAddProductComponent;
use App\Http\Livewire\Admin\AdminCategoryComponent;
use App\Http\Livewire\Admin\AdminAddCategoryNewsComponent;
use App\Http\Livewire\Admin\AdminContactComponent;
use App\Http\Livewire\Admin\AdminCouponsComponent;
use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\Admin\AdminEditCategoryComponent;
use App\Http\Livewire\Admin\AdminEditCategoryNewsComponent;
use App\Http\Livewire\Admin\AdminEditCouponComponent;
use App\Http\Livewire\Admin\AdminEditHomeSliderComponent;
use App\Http\Livewire\Admin\AdminEditProductComponent;
use App\Http\Livewire\Admin\AdminHomeCategoryComponent;
use App\Http\Livewire\Admin\AdminHomeSliderComponent;
use App\Http\Livewire\Admin\AdminOrderComponent;
use App\Http\Livewire\Admin\AdminOrderDetailsComponent;
use App\Http\Livewire\Admin\AdminProductComponent;
use App\Http\Livewire\Admin\AdminSaleComponent;
use App\Http\Livewire\CartComponent;
use App\Http\Livewire\ProducerComponent;
use App\Http\Livewire\CategoryComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\ContactComponent;
use App\Http\Livewire\DetailsComponent;
use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\SearchComponent;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\NewsComponent;
use App\Http\Livewire\NewsDetailComponent;
use App\Http\Livewire\ThankyouComponent;
use App\Http\Livewire\User\UserChangePasswordComponent;
use App\Http\Livewire\User\UserDashboardComponent;
use App\Http\Livewire\User\UserOrderDetailsComponent;
use App\Http\Livewire\User\UserOrdersComponent;
use App\Http\Livewire\User\UserReviewComponent;
use App\Http\Livewire\User\UserProfileComponent;
use App\Http\Livewire\User\UserEditProfileComponent;
use App\Http\Livewire\WishListComponent;
use App\Http\Livewire\Admin\AdminProducerComponent;
use App\Http\Livewire\Admin\AdminAddProducerComponent;
use App\Http\Livewire\Admin\AdminEditProducerComponent;
use App\Http\Livewire\Admin\AdminNewsComponent;
use App\Http\Livewire\Admin\AdminAddNewsComponent;
use App\Http\Livewire\Admin\AdminEditNewsComponent;
use Illuminate\Support\Facades\Route;


//Route::get('/', function () {
  //  return view('welcome');
//});

Route::get('/',HomeComponent::class);

Route::get('/shop',ShopComponent::class);

Route::get('/news', NewsComponent::class);

Route::get('/cart',CartComponent::class)->name('product.cart');

Route::get('/news/{slug}',NewsDetailComponent::class)->name('news.details');

Route::get('/product/{slug}',DetailsComponent::class)->name('product.details');

Route::get('/product-producer/{producer_slug}',ProducerComponent::class)->name('product.producer');

Route::get('/product-category/{category_slug}',CategoryComponent::class)->name('product.category');

Route::get('/search',SearchComponent::class)->name('product.search');

Route::get('/wishlist',WishListComponent::class)->name('product.wishlist');

Route::get('/thank-you',ThankyouComponent::class)->name('thankyou');

Route::get('/contact-us',ContactComponent::class)->name('contact');

//For user or customer
Route::middleware(['auth:sanctum','verified'])->group(function(){
    Route::get('/checkout',CheckoutComponent::class)->name('checkout');
    Route::get('/user/dashboard',UserDashboardComponent::class)->name('user.dashboard');
    Route::get('/user/orders',UserOrdersComponent::class)->name('user.orders');
    Route::get('/user/orders/{order_id}',UserOrderDetailsComponent::class)->name('user.orderdetails');
    Route::get('/user/review/{order_item_id}',UserReviewComponent::class)->name('user.review');
    Route::get('/user/change-password',UserChangePasswordComponent::class)->name('user.changepassword');
    Route::get('/user/profile',UserProfileComponent::class)->name('user.profile');
    Route::get('/user/profile/edit',UserEditProfileComponent::class)->name('user.editprofile');
});

//For Admin
Route::middleware(['auth:sanctum','verified','authadmin'])->group(function(){
    Route::get('/admin/dashboard',AdminDashboardComponent::class)->name('admin.dashboard');
    //Category
    Route::get('/admin/categories',AdminCategoryComponent::class)->name('admin.categories');
    Route::get('/admin/category/add',AdminAddCategoryComponent::class)->name('admin.addcategory');
    Route::get('/admin/category/edit/{category_slug}',AdminEditCategoryComponent::class)->name('admin.editcategory');

    //producer
    Route::get('/admin/producers',AdminProducerComponent::class)->name('admin.producers');
    Route::get('/admin/producer/add',AdminAddProducerComponent::class)->name('admin.addproducer');
    Route::get('admin/producer/edit/{producer_slug}',AdminEditProducerComponent::class)->name('admin.editproducer');

    //Product
    Route::get('/admin/products',AdminProductComponent::class)->name('admin.products');
    Route::get('/admin/product/add',AdminAddProductComponent::class)->name('admin.addproduct');
    Route::get('/admin/product/edit/{product_slug}',AdminEditProductComponent::class)->name('admin.editproduct');

    //Slider
    Route::get('/admin/sliders',AdminHomeSliderComponent::class)->name('admin.sliders');
    Route::get('/admin/slider/add',AdminAddHomeSliderComponent::class)->name('admin.addhomeslider');
    Route::get('/admin/slider/edit/{slide_id}',AdminEditHomeSliderComponent::class)->name('admin.edithomeslider');


    //homecategories
    Route::get('/admin/home-categories',AdminHomeCategoryComponent::class)->name('admin.homecategories');
    //Sale chua update duoc ngay
    Route::get('/admin/sale',AdminSaleComponent::class)->name('admin.sale');

    //coupnon
    Route::get('/admin/coupons',AdminCouponsComponent::class)->name('admin.coupons');
    Route::get('/admin/coupon/add',AdminAddCouponComponent::class)->name('admin.addcoupon');
    Route::get('/admin/coupon/edit/{coupon_id}',AdminEditCouponComponent::class)->name('admin.editcoupon');

    //giam gia ch xong

    //order
    Route::get('/admin/orders',AdminOrderComponent::class)->name('admin.orders');
    //order details
    Route::get('/admin/orders/{order_id}',AdminOrderDetailsComponent::class)->name('admin.orderdetails');

    Route::get('/admin/contact-us',AdminContactComponent::class)->name('admin.contact');

    //categorynews
    Route::get('/admin/categorynews',AdminCategoryNewsComponent::class)->name('admin.categorynews');
    Route::get('/admin/categorynews/add',AdminAddCategoryNewsComponent::class)->name('admin.addcategorynews');
    Route::get('/admin/categorynews/edit/{categorynew_slug}',AdminEditCategoryNewsComponent::class)->name('admin.editcategorynews');

    //News
    Route::get('/admin/news',AdminNewsComponent::class)->name('admin.news');
    Route::get('/admin/new/add', AdminAddNewsComponent::class)->name('admin.addnews');
    Route::get('/admin/new/edit/{new_slug}', AdminEditNewsComponent::class)->name('admin.editnews');

  });


