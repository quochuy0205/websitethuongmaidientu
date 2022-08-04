<?php

namespace App\Http\Livewire\Admin;

use App\Models\CategoryNews;
use App\Models\News;
use Livewire\Component;
use Illuminate\Support\Str;
use Illuminate\Support\Carbon;
use Livewire\WithFileUploads;

class AdminAddNewsComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $image;
    public $category_news_id;

    public function mount()
    {

    }

    public function generateslug()
    {
        $this->slug = Str::slug($this->name, '-');
    }

    public function addNews()
    {
        $news = new News();
        $news->name = $this->name;
        $news->slug = $this->slug;
        $news->short_description = $this->short_description;
        $news->description = $this->description;
        $imageName = Carbon::now()->timestamp. '.' . $this->image->extension();
        $this->image->storeAs('news', $imageName);
        $news->image = $imageName;
        $news->category_news_id = $this->category_news_id;
        $news->save();
        session()->flash('message','News has been added');
    }

    public function render()
    {
        $categorynews = CategoryNews::all();
        return view('livewire.admin.admin-add-news-component',['categorynews'=>$categorynews])->layout('layouts.base');
    }
}
