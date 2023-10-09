@extends('admin.master')

@section('body')

    <div class="row">
        <div class="col">
            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800 text-center"> Blog Module</h1>
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Manage Blog Table </h6>
                    </div>
                    <p class="text-center text-success">{{session('message')}}</p>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th class="text-center">SL</th>
                                    <th class="text-center">Title</th>
                                    <th class="text-center">Image</th>
                                    <th class="text-center">Description</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($blogs as $blog)
                                    <tr>
                                        <td class="text-center">{{$loop->iteration}}</td>
                                        <td class="text-center">{{$blog->title}}</td>
                                        <td class="text-center"><img src="{{asset($blog->image)}}" height="50" width="70" alt=""/></td>
                                        <td>{{$blog->description}}</td>
                                        <td class="text-center">{{$blog->status == 1 ? 'Published' : 'Unpublished'}}</td>
                                        <td class="text-center">
                                            <a href="{{route('blog.edit',['id'=>$blog->id])}}" class="btn btn-success btn-sm">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            <a href="{{route('blog.delete',['id'=>$blog->id])}}" onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm">
                                                <i class="fa fa-trash"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->
@endsection
