<div>
    <div>
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel panel-heading">
                                <div class="row">
                                    <div class="col-md-6">
                                       Edit Producer
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{route('admin.producers')}}" class="btn btn-success">Lists</a>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">
                                @if(Session::has('message'))
                                    <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
                                <form action="" class="form-horizontal" wire:submit.prevent="updateProducer">
                                    <div class="form-group">
                                        <label for="" class="col-md-4 control-label">Producer Name</label>
                                        <div class="col-md-4">
                                            <input type="text" placeholder="Producer Name" class="form-control input-md" wire:model="name" wire:keyup="generateslug"/>
                                            @error('name')
                                            <p class="text-danger">{{$message}}</p>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="" class="col-md-4 control-label">Producer Slug</label>
                                        <div class="col-md-4">
                                            <input type="text" placeholder="Producer Slug" class="form-control input-md" wire:model="slug"/>
                                            @error('slug')
                                            <p class="text-danger">{{$message}}</p>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="" class="col-md-4 control-label"></label>
                                        <div class="col-md-4">
                                            <button type="submit" class="btn btn-primary">Edit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>
