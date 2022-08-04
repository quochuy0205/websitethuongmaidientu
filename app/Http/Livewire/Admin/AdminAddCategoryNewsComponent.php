<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Illuminate\Support\Str;
use App\Models\CategoryNews;
class AdminAddCategoryNewsComponent extends Component
{
    public $nameCategoryNews;
    public $slugCategoryNews;

    public function generateslug(){
        $this->slugCategoryNews = Str::slug($this->nameCategoryNews,'-');
    }

    public function update($fields){
        $this->validateOnly($fields,[
            'nameCategoryNews'=>'required',
            'slugCategoryNews'=>'required'
        ]);
    }

    public function storeCategoryNews(){
        $this->validate([
            'nameCategoryNews'=>'required',
            'slugCategoryNews'=>'required'
        ]);

        $categoryNews = new CategoryNews();
        $categoryNews->name = $this->nameCategoryNews;
        $categoryNews->slug = $this->slugCategoryNews;
        $categoryNews->save();
        session()->flash('message','CategoryNews has been added!');


    }

    public function render()
    {
        return view('livewire.admin.admin-add-category-news-component')->layout('layouts.base');
    }
}
