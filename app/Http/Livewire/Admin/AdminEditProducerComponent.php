<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Producer;
use Illuminate\Support\Str;

class AdminEditProducerComponent extends Component
{
    public $name;
    public $slug;
    public $producer_id;
    public $producer_slug;

    public function mount($producer_slug)
    {
        $this->producer_slug = $producer_slug;
        $producer = Producer::where('slug',$producer_slug)->first();
        $this->producer_id = $producer->id;
        $this->name = $producer->name;
        $this->slug = $producer->slug;
    }

    public function generateslug()
    {
        $this->slug = Str::slug($this->name);
    }

    public function updateProducer()
    {
        $producer = Producer::find($this->producer_id);
        $producer->name = $this->name;
        $producer->slug = $this->slug;
        $producer->save();
        session()->flash('message','Producer has been updated');
    }

    public function render()
    {
        return view('livewire.admin.admin-edit-producer-component')->layout('layouts.base');
    }
}
