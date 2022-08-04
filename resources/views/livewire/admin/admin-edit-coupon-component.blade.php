<div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel panel-heading">
                        <div class="row">
                        <div class="col-md-6">
                          Edit Coupon
                        </div>
                        <div class="col-md-6">
                            <a href="{{route('admin.coupons')}}" class="btn btn-success">All Coupon</a>
                        </div>
                    </div>
                    </div>
                    <div class="panel-body">
                         @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form action="" class="form-horizontal" wire:submit.prevent="updateCoupon">
                            <div class="form-group">
                                <label for="" class="col-md-4 control-label">Coupon Code</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Coupon Code" class="form-control input-md" wire:model="code"/>
                                    @error('name')
                                        <p class="text-danger">{{$message}}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-md-4 control-label">Coupon Type</label>
                                <div class="col-md-4">
                                  <select name="" id="" class="form-control" wire:model="type">
                                    <option value="">Select</option>
                                    <option value="fixed">Fixed</option>
                                    <option value="percent">Percent</option>
                                  </select>
                                    @error('name')
                                        <p class="text-danger">{{$message}}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-md-4 control-label">Coupon Value</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Coupon Value" class="form-control input-md" wire:model="value"/>
                                    @error('slug')
                                        <p class="text-danger">{{$message}}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-md-4 control-label">Cart Value</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Cart Value" class="form-control input-md" wire:model="cart_value"/>
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
