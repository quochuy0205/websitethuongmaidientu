<?php

namespace App\Http\Livewire\Admin;


use App\Models\Product;
use Livewire\Component;
use App\Models\CategoryNews;
use App\Models\News;
use Illuminate\Support\Carbon;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;

class AdminEditNewsComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $image;
    public $newimage;
    public $category_news_id;
    public $new_id;

    public function mount($new_slug)
    {

        $new = News::where('slug', $new_slug)->first();
        $this->name = $new->name;
        $this->slug = $new->slug;
        $this->short_description = $new->short_description;
        $this->description = $new->description;
        $this->image = $new->image;
        $this->category_news_id = $new->category_news_id;
        $this->new_id = $new->id;
    }

    public function generateslug()
    {
        $this->slug = Str::slug($this->name, '-');
    }

    public function editNews()
    {
        $news = News::find($this->new_id);
        $news->name = $this->name;
        $news->slug = $this->slug;
        $news->short_description = $this->short_description;
        $news->description = $this->description;
        if($this->newimage)
        {
            $imageName = Carbon::now()->timestamp . '.' . $this->newimage->extension();
            $this->newimage->storeAs('news',$imageName);
            $news->image = $imageName;
        }
        $news->category_news_id = $this->category_news_id;
        $news->save();
        session()->flash('message','News has been updated');
    }

    public function render()
    {
        $categorynews = CategoryNews::all();
        return view('livewire.admin.admin-edit-news-component',['categorynews'=>$categorynews])->layout('layouts.base');
    }
}
