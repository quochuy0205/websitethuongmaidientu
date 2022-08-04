<?php

namespace App\Http\Livewire;

use App\Models\Producer;
use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;
use App\Models\Category;
class ProducerComponent extends Component
{
    public $sorting;
    public $pagesize;

    public $producer_slug;

    public $min_price;
    public $max_price;

    public function mount($producer_slug)
    {
        $this->sorting = "default";
        $this->pagesize = 12;

        $this->producer_slug = $producer_slug;

        $this->min_price = 1;
        $this->max_price = 1000;
    }


    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', 'Item added in cart');
        return redirect()->route('product.cart');
    }

    public function addToWishList($product_id, $product_name, $product_price)
    {
        Cart::instance('wishlist')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        $this->emitTo('wish-list-count-component', 'refreshComponent');
    }

    public function removeFromWishList($product_id)
    {
        //do xem trong danh sach co san pham yeu thich khong
        foreach (Cart::instance('wishlist')->content() as $witem) {
            if ($witem->id == $product_id) {
                Cart::instance('wishlist')->remove($witem->rowId);
                $this->emitTo('wish-list-count-component', 'refreshComponent');
                return;
            }
        }
    }

    use WithPagination;

    public function render()
    {
        $producer = Producer::where('slug',$this->producer_slug)->first();
        $producer_id = $producer->id;
        $producer_name = $producer->name;
        if($this->sorting='date'){
            $products = Product::where('producer_id',$producer_id)->orderBy('created_at','DESC')->paginate($this->pagesize);
        }
        else if($this->sorting=='price')
        {
            $products = Product::where('producer_id',$producer_id)->orderBy('regular_price','ASC')->paginate($this->pagesize);
        }
        else if($this->sorting=='price-desc')
        {
            $products = Product::where('producer_id',$producer_id)->orderBy('regular_price','DESC')->paginate($this->pagesize);
        }else
        {
            $products = Product::where('producer_id',$producer_id)->paginate($this->pagesize);
        }
        $popular_products = Product::inRandomOrder()->limit(4)->get();
        $producers = Producer::all();
        $categories = Category::all();
        return view('livewire.producer-component', ['products' => $products, 'categories' => $categories, 'producers' => $producers,'producer_name'=>$producer_name,'popular_products'=>$popular_products])->layout("layouts.base");
    }
}
