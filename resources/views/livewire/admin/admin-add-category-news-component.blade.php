<div>
    <div>
        <div class="container" style="padding:30px 0;">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel panel-heading">
                            <div class="row">
                            <div class="col-md-6">
                               Add New Category
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.categorynews') }}" class="btn btn-success">List</a>
                            </div>
                        </div>
                        </div>
                        <div class="panel-body">
                             @if(Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                            @endif
                            <form action="" class="form-horizontal" wire:submit.prevent="storeCategoryNews">
                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">NewCategory Name</label>
                                    <div class="col-md-4">
                                        <input type="text" placeholder="NewCategory Name" class="form-control input-md" wire:model="nameCategoryNews" wire:keyup="generateslug"/>
                                        @error('name')
                                            <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">NewCategory Slug</label>
                                    <div class="col-md-4">
                                        <input type="text" placeholder="NewCategory Slug" class="form-control input-md" wire:model="slugCategoryNews"/>
                                        @error('slug')
                                            <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label"></label>
                                    <div class="col-md-4">
                                       <button type="submit" class="btn btn-primary">ADD</button>
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
