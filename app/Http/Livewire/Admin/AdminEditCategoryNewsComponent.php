<?php

namespace App\Http\Livewire\Admin;

use App\Models\CategoryNews;
use Livewire\Component;
use Illuminate\Support\Str;
class AdminEditCategoryNewsComponent extends Component
{
    public $categorynew_id;
    public $categorynew_slug;
    public $nameCategoryNew;
    public $slugCategoryNew;

    public function mount($categorynew_slug)
    {
        $this->categorynew_slug = $categorynew_slug;
        //tim slug
        $categorynew = CategoryNews::where('slug',$categorynew_slug)->first();
        //tim ra san pham co slug can tim`
        $this->categorynew_id = $categorynew->id;
        $this->nameCategoryNew = $categorynew->name;
        $this->slugCategoryNew = $categorynew->slug;
    }

    public function generateslug()
    {
        $this->slugCategoryNew = Str::slug($this->nameCategoryNew);
    }

    public function update($fields)
    {
        $this->validateOnly($fields,[
            'nameCategoryNew'=>'required',
            'slugCategoryNew'=>'required'
        ]);
    }


    public function updateCategoryNews()
    {
        $this->validate([
            'nameCategoryNew'=>'required',
            'slugCategoryNew'=>'required'
        ]);

        $categorynew = CategoryNews::find($this->categorynew_id);
        $categorynew->name = $this->nameCategoryNew;
        $categorynew->slug = $this->slugCategoryNew;
        $categorynew->save();
        session()->flash('message','CategoryNews has been updated!');
    }

    public function render()
    {
        return view('livewire.admin.admin-edit-category-news-component')->layout('layouts.base');
    }
}
