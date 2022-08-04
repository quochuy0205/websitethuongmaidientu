<?php

namespace App\Http\Livewire\User;

use Carbon\Carbon;
use Livewire\Component;
use App\Models\Profile;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Livewire\WithFileUploads;
class UserEditProfileComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $firstname;
    public $lastname;
    public $email;
    public $mobile;
    public $image;
    public $line1;
    public $line2;
    public $city;
    public $province;
    public $country;
    public $zipcode;
    public $newImage;

    public function  mount()
    {
        $user =User::find(Auth::user()->id);
        $this-> name = $user->name;
        $this-> email = $user->email;
        $this-> mobile = $user->profile->mobile;
        $this-> firstname = $user->profile->firstname;
        $this->lastname = $user->profile->lastname;
        $this->image = $user->profile->image;
        $this-> line1 = $user->profile->line1;
        $this-> line2 = $user->profile->line2;
        $this-> city = $user->profile->city;
        $this-> province = $user->profile->province;
        $this-> country = $user->profile->country;
        $this-> zipcode = $user->profile->zipcode;
        $this-> newImage = $user->profile->newImage;
    }

    public function updateProfile()
    {
        $user = User::find(Auth::user()->id);
        $user->name = $this->name;
        $user->save();
        if($this->newImage)
        {
            if($this->image)
            {
             unlink('assets/images/profile/'.$this->image);
            }
            $imageName = Carbon::now()->timestamp. '.' . $this->newImage->extension();
            $this->newImage->storeAs('profile',$imageName);
            $user->profile->image = $imageName;
        }
        $user->profile->firstname = $this->firstname;
        $user->profile->lastname = $this->lastname;
        $user->profile->mobile = $this->mobile;
        $user->profile->line1 = $this->line1;
        $user->profile->line2 = $this->line2;
        $user->profile->city = $this->city;
        $user->profile->province = $this->province;
        $user->profile->country = $this->country;
        $user->profile->zipcode = $this->zipcode;
        $user->profile->save();
        session()->flash('message','Profile has been updated');
    }

    public function render()
    {
        $user = User::find(Auth::user()->id);
        return view('livewire.user.user-edit-profile-component',['user'=>$user])->layout('layouts.base');
    }
}
