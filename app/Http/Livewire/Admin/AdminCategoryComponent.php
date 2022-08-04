<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use Livewire\Component;
use Livewire\WithPagination;
class AdminCategoryComponent extends Component
{
    use WithPagination;
    public $searchCategory;
    public function deleteCategory($id)
    {
        $category = Category::find($id);
        $category->delete();
        session()->flash('message','Category has been deleted successfully!');
     }

    public function render()
    {
        $search = '%'.$this->searchCategory.'%';
        $categories = Category::where('name','LIKE',$search)->orderBy('id','DESC')->paginate(5);
        return view('livewire.admin.admin-category-component',['categories'=>$categories])->layout('layouts.base');
    }
}
