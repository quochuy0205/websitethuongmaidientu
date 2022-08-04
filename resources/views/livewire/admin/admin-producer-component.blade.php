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
                                <div class="col-md-6">
                                    Producers
                                </div>
                                <div class="col-md-6">
                                    <a href="{{route('admin.addproducer')}}" class="btn btn-success pull-right">Add News</a>
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

                                @foreach($producer as $producers)
                                    <tr>
                                        <td>{{$producers->id}}</td>
                                        <td>{{$producers->name}}</td>
                                        <td>{{$producers->slug}}</td>
                                        <td>
                                            <a href="{{route('admin.editproducer',['producer_slug'=>$producers->slug])}}"><i class="fa fa-edit fa-2x"></i></a>
                                            <a href="" onclick="confirm('Are you sure, You want to delete this category') || event.stopImmediatePropagation()" wire:click.prevent="deleteProducer({{$producers->id}})" style="margin-left:10px;"><i class="fa fa-times fa-2x text-danger"></i></a>
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            {{$producer->links()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
