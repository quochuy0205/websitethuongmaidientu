<?php

namespace App\Http\Livewire\Admin;

use App\Models\News;
use Livewire\Component;
use Livewire\WithPagination;

class AdminNewsComponent extends Component
{
    use WithPagination;
    public $searchNews;
    public function deleteNews($id)
    {
        $news = News::find($id);
        $news->delete();
        session()->flash('message','News has been deleted');
    }
    public function render()
    {
        $search = '%'.$this->searchNews.'%';
        $news = News::where('name','LIKE',$search)
                      ->orWhere('short_description','LIKE',$search)
                      ->orWhere('description','LIKE',$search)
                      ->orderBy('id','DESC')->paginate(7);
        return view('livewire.admin.admin-news-component',['news'=>$news])->layout('layouts.base');
    }
}
