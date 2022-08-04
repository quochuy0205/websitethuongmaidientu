<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Product;
use Livewire\WithPagination;

class AdminProductComponent extends Component
{
    use WithPagination;
    public $searchTerm;
    public function deleteProduct($id){
        $product = Product::find($id);
        $product->delete();
        session()->flash('message','Product has been deleted succesfully');
    }

    public function render()
    {
        $search = '%' . $this->searchTerm .'%';
        $products = Product::where('name','LIKE',$search)
                     ->orWhere('stock_status','LIKE',$search)
                     ->orWhere('regular_price','LIKE',$search)
                     ->orWhere('sale_price','LIKE',$search)
                     ->orWhere('producer_id','LIKE',$search)
                     ->orderBy('id','DESC')->paginate(10);
        return view('livewire.admin.admin-product-component',['products'=>$products])->layout('layouts.base');
    }
}
