<?php

namespace App\Http\Livewire\Admin;

use App\Models\CategoryNews;
use Livewire\Component;
use Livewire\WithPagination;

class AdminCategoryNewsComponent extends Component
{
    use WithPagination;
    public $searchCategoryNews;
    public function deleteCategoryNews($id)
    {
        $categorynew = CategoryNews::find($id);
        $categorynew->delete();
        session()->flash('message','CategoryNews has been deleted!');
    }

    public function render()
    {
        $search = '%'.$this->searchCategoryNews.'%';
        $categorynew=CategoryNews::where('name','LIKE',$search)->orderBy('id','DESC')->paginate(5);
        return view('livewire.admin.admin-category-news-component',['categorynew'=>$categorynew])->layout('layouts.base');
    }
}
