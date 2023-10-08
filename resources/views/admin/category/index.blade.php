@extends('admin.master')

@section('body')

    <div class="row">
        <div class="col">
            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800 text-center"> Category Module</h1>
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary ">Add Category Form </h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <h6 class="text-center text-success">{{session('message')}}</h6>
                            <section class="py-5 bg-secondary-subtle">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12 mx-auto">
                                            <div class="card card-body">
                                                <form action="{{route('category.store')}}" method="POST" enctype="multipart/form-data">
                                                    @csrf
                                                    <div class="row mb-3">
                                                        <label class="col-md-3">Category Name</label>
                                                        <div class="col-md-9">
                                                            <input type="text" value="" class="form-control" name="name" placeholder="Category name"/>
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label class="col-md-3">Publication Staus</label>
                                                        <div class="col-md-9">
                                                            <label><input type="radio" name="status" checked value="1">Published</label>
                                                            <label><input type="radio" name="status" value="0">Unpublished</label>
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label class="col-md-3"></label>
                                                        <div class="col-md-9">
                                                            <input type="submit" class="btn btn-outline-success rounded-0 px-5" value="Create New Category"/>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->


@endsection

























