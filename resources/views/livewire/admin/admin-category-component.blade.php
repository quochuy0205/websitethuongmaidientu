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
                             Categories
                         </div>
                         <div class="col-md-4">
                             <a href="{{route('admin.addcategory')}}" class="btn btn-success pull-right">Add News</a>
                         </div>
                         <div class="col-md-4">
                             <input type="text" class="form-control" placeholder="Search..." wire:model="searchCategory">
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
                                    <th>Name</th>
                                    <th>Slug</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                @foreach($categories as $cat)
                                 <tr>
                                <td>{{$cat->id}}</td>
                                <td>{{$cat->name}}</td>
                                <td>{{$cat->slug}}</td>
                                <td>
                                    <a href="{{route('admin.editcategory',['category_slug'=>$cat->slug])}}"><i class="fa fa-edit fa-2x"></i></a>
                                    <a href="" onclick="confirm('Are you sure, You want to delete this category') || event.stopImmediatePropagation()" wire:click.prevent="deleteCategory({{$cat->id}})" style="margin-left:10px;"><i class="fa fa-times fa-2x text-danger"></i></a>
                                </td>
                            </tr>
                                @endforeach

                            </tbody>
                        </table>
                        {{$categories->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
