<?php

namespace App\Http\Livewire;

use App\Models\CategoryNews;
use App\Models\News;
use Livewire\Component;

class NewsComponent extends Component
{
    public function render()
    {
        $categorynews = CategoryNews::all();
        $news = News::paginate(5);
        return view('livewire.news-component',['categorynews'=>$categorynews,'news'=>$news])->layout('layouts.base');
    }
}
