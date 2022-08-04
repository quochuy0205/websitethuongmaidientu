<?php

namespace App\Http\Livewire\Admin;

use App\Models\Producer;
use Livewire\Component;
use Illuminate\Support\Str;

class AdminAddProducerComponent extends Component
{
    public $name;
    public $slug;

    public  function generateslug()
    {
        $this->slug = Str::slug($this->name);
    }

    public function update($fields)
    {
        $this->validateOnly($fields,[
           'name'=>'required',
           'slug'=>'required'
        ]);
    }

    public function storeProducer()
    {
        $this->validate=[
          'name'=>'required',
          'slug'=>'required'
        ];
        $producer = new Producer();
        $producer->name = $this->name;
        $producer->slug = $this->slug;
        $producer->save();
        session()->flash('message','Producer has been add successfully');
    }
    public function render()
    {
        return view('livewire.admin.admin-add-producer-component')->layout('layouts.base');
    }
}
