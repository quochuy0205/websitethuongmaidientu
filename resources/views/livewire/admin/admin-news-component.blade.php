<div>
    <div>
        <style>
            nav svg{
                height: 20px;
            }

            nav .hidden{
                display: block !important;
            }

        </style>
        <div class="container" style="padding:30px 0;">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-md-4">
                                   News
                                </div>
                                <div class="col-md-4">
                                    <a href="{{route('admin.addnews')}}" class="btn btn-success pull-right">ADD</a>
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" placeholder="Search..." wire:model="searchNews">
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            @if(Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                            @endif
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Slug</th>
                                    <th>Short Description</th>
                                    <th>Description</th>
                                    <th>Category</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach($news as $new)
                                    <tr>
                                        <td>{{$new->id}}</td>
                                        <td><img src="{{asset('assets/images/news/')}}/{{$new->image}}" style="width:60px;"></td>
                                        <td>{{$new->name}}</td>
                                        <td>{{$new->slug}}</td>
                                        <td>{{$new->short_description}}</td>
                                        <td>{{$new->description}}</td>
                                        <td>{{$new->category_news->name}}</td>
                                        <td>
                                            <a href="{{route('admin.editnews',['new_slug'=>$new->slug])}}"><i class="fa fa-edit fa-2x"></i></a>
                                            <a href="" onclick="confirm('Are you sure, You want to delete this category') || event.stopImmediatePropagation()" wire:click.prevent="deleteNews({{$new->id}})" style="margin-left:10px;"><i class="fa fa-times fa-2x text-danger"></i></a>
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            {{$news->links()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
