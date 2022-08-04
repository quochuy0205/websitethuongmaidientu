<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Producer;
use Livewire\Component;
use Livewire\WithPagination;

class AdminProducerComponent extends Component
{
    use WithPagination;

    public function deleteProducer($id)
    {
        $producer = Producer::find($id);
        $producer->delete();
        session()->flash('message','Category has been deleted successfully!');
    }

    public function render()
    {
        $producer = Producer::paginate(5);
        return view('livewire.admin.admin-producer-component',['producer'=>$producer])->layout('layouts.base');
    }
}
