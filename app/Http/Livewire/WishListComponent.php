<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;
class WishListComponent extends Component
{

    public function removeFromWishList($product_id){
        //do xem trong danh sach co san pham yeu thich khong
        foreach(Cart::instance('wishlist')->content() as $witem){
            if($witem->id == $product_id)
            {
                Cart::instance('wishlist')->remove($witem->rowId);
                $this->emitTo('wish-list-count-component','refreshComponent');
                return;
            }
        }
    }

    public function moveProductFromWishListToCart($rowId){
        $item = Cart::instance('wishlist')->get($rowId);
        Cart::instance('wishlist')->remove($rowId);
        Cart::instance('cart')->add($item->id,$item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('wish-list-count-component','refreshComponent');
        $this->emitTo('cart-count-component','refreshComponent');
    }
    public function render()
    {
        return view('livewire.wish-list-component')->layout('layouts.base');
    }
}
