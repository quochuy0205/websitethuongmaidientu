<div>
    <div>
        <div class="container" >
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel panel-heading">
                            <div class="row">
                                <div class="col-md-6">
                                  Add News
                                </div>
                                <div class="col-md-6">
                                    <a href="{{route('admin.news')}}" class="btn btn-success pull-right">List</a>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            @if(Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                            @endif
                            <form action="" class="form-horizontal" enctype="multipart/form-data" wire:submit.prevent="addNews">
                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">News Name</label>
                                    <div class="col-md-4">
                                        <input type="text" placeholder="News Name" class="form-control input-md" wire:model="name">
                                        @error('name')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Slug</label>
                                    <div class="col-md-4">
                                        <input type="text" placeholder="Slug" class="form-control input-md" wire:model="slug" wire:keyup="generateslug">
                                        @error('slug')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Short Description</label>
                                    <div class="col-md-4" wire:ignore>
                                        <textarea class="form-control" id="short_description" placeholder="Short Description" wire:model="short_description"></textarea>
                                        @error('short_description')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Description</label>
                                    <div class="col-md-4" wire:ignore>
                                        <textarea class="form-control" id="description" placeholder="Description" wire:model="description"></textarea>
                                        @error('description')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Image</label>
                                    <div class="col-md-4">
                                        <input type="file"  class="input-file" wire:model="image">
                                        @if($image)
                                            <img src="{{$image->temporaryUrl()}}" width="120" alt="">
                                        @endif
                                        @error('image')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Category</label>
                                    <div class="col-md-4">
                                        <select class="form-control" wire:model="category_news_id">
                                            <option value="">--Category--</option>
                                            @foreach($categorynews as $catnew)
                                                <option value="{{$catnew->id}}">{{$catnew->name}}</option>
                                            @endforeach
                                        </select>
                                        @error('categorynew_id')
                                        <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label  class="col-md-4 control-label"></label>
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

    @push('scripts')
        <script>
            $(function(){
                tinymce.init({
                    selector:'#short_description',
                    setup:function(editor){
                        editor.on('Change',function(e){
                            tinyMCE.triggerSave();
                            var sd_data = $('#short_description').val();
                            @this.set('short_description',sd_data);
                        });
                    }
                });
            });

            $(function(){
                tinymce.init({
                    selector:'#description',
                    setup:function(editor){
                        editor.on('Change',function(e){
                            tinyMCE.triggerSave();
                            var d_data = $('#description').val();
                            @this.set('description',d_data);
                        });
                    }
                });
            });


        </script>
    @endpush

</div>
