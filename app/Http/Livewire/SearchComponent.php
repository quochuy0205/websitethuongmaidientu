<?php

namespace App\Http\Livewire;

use App\Models\Product;
use App\Models\Producer;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;
use App\Models\Category;
class SearchComponent extends Component
{
    public $sorting;
    public $pagesize;
    public $min_price;
    public $max_price;
    public $search;
    public $product_cat;
    public $product_cat_id;

    public function mount(){
        $this->sorting="default";
        $this->pagesize=12;
        $this->fill(request()->only('search','product_cat','product_cat_id'));
        $this->min_price = 1;
        $this->max_price = 1000;
    }


    public function store($product_id,$product_name,$product_price)
    {
            Cart::add($product_id,$product_name,1,$product_price)->associate('App\Models\Product');
            session()->flash('success_message','Item added in cart');
            return redirect()->route('product.cart');
        }
    use WithPagination;
    public function render()
    {
        if($this->sorting=='date')
        {
            $products = Product::where('name','like','%'.$this->search.'%')->where('category_id','like','%'.$this->product_cat_id.'%')->orderBy('created_at','DESC')->paginate($this->pagesize);
        }
        else if($this->sorting=="price")
        {
            $products = Product::where('name','like','%'.$this->search.'%')->where('category_id','like','%'.$this->product_cat_id.'%')->orderBy('regular_price','ASC')->paginate($this->pagesize);
        }
        else if($this->sorting=="price-desc")
        {
            $products = Product::where('name','like','%'.$this->search.'%')->where('category_id','like','%'.$this->product_cat_id.'%')->orderBy('regular_price','DESC')->paginate($this->pagesize);
        }else
        {
            $products = Product::where('name','like','%'.$this->search.'%')->where('category_id','like','%'.$this->product_cat_id.'%')->paginate($this->pagesize);
        }
        $producers = Producer::all();
        $categories = Category::all();
        return view('livewire.search-component',['products'=>$products, 'categories'=>$categories,'producers'=>$producers])->layout("layouts.base");
    }
}
