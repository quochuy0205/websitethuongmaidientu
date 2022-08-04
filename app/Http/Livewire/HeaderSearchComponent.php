<?php

namespace App\Http\Livewire;

use App\Models\Producer;
use Livewire\Component;
use App\Models\Category;

class HeaderSearchComponent extends Component
{
    public $search;
    public $product_cat;
    public $product_cat_id;

    public function mount()
    {
        $this->product_cat='All Category';
        $this->fill(request()->only('search','product_cat','product_cat_id'));
    }
    public function render()
    {
        $producers = Producer::all();
        $categories = Category::all();
        return view('livewire.header-search-component',['categories'=>$categories,'producers'=>$producers]);
    }
}
