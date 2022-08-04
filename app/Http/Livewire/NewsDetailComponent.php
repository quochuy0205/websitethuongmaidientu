<?php

namespace App\Http\Livewire;

use App\Models\News;
use Livewire\Component;

class NewsDetailComponent extends Component
{
    public $slug;
    public function mount($slug){
        //khoi tao gia tri mac dinh
        $this->slug=$slug;
    }
    public function render()
    {
        $news = News::where('slug',$this->slug)->first();
        $popular_new = News::inRandomOrder()->limit(4)->get();
        return view('livewire.news-detail-component',['news'=>$news,'popular_new'=>$popular_new])->layout('layouts.base');
    }
}
