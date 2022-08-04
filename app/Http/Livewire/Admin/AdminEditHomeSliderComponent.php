<?php

namespace App\Http\Livewire\Admin;

use App\Models\HomeSlider;
use Livewire\Component;
use Illuminate\Support\Carbon;
use Livewire\WithFileUploads;
class AdminEditHomeSliderComponent extends Component
{
    use WithFileUploads;
    public $title;
    public $subtitle;
    public $price;
    public $link;
    public $image;
    public $status;
    public $newimage;
    
    public function mount($slide_id)
    {
        $slider = HomeSlider::find($slide_id);
        $this->title = $slider->title;
        $this->subtitle = $slider->subtitle;
        $this->price = $slider->price;
        $this->link = $slider->link;
        $this->image = $slider->image;
        $this->status = $slider->status;
        $this->slider_id = $slide_id;
    }

    public function updateSlide(){
        $slider = HomeSlider::find($this->slider_id);
        $slider->title = $this->title;
        $slider->subtitle = $this->subtitle;
        $slider->price = $this->price;
        $slider->link = $this->link;
        if($this->newimage){
            $imagename= Carbon::now()->timestamp. '.' . $this->image->extension();
            $this->image->storeAs('sliders',$imagename);
            $slider->image=$imagename;
        }
        
        $slider->status = $this->status;
        $slider->save();
        session()->flash('message','Slider has been updated');



    }


    public function render()
    {
        return view('livewire.admin.admin-edit-home-slider-component')->layout('layouts.base');
    }
}
