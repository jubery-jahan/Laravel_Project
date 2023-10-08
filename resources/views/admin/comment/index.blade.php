@extends('admin.master')
@section('body')
    <div class="row">
        <div class="col">
            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800 text-center"> Comment Module</h1>
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Manage Comment Table </h6>
                    </div>
                    <p class="text-center text-success">{{session('message')}}</p>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Blog Title</th>
                                    <th>Visitor Name</th>
                                    <th>comment</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($comments as $comment)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>{{$comment->blog->title}}</td>
                                        <td>{{$comment->visitor->name}}</td>
                                        <td>{{$comment->comment}}</td>
                                        <td>{{$comment->status == 1 ? 'Published' : 'Unpublished'}}</td>
                                        <td>
                                            <a href="{{route('comment.update-status', ['id'=> $comment->id])}}" class="btn {{$comment->status == '1' ? 'bt-sucess' : 'btn-warnning'}} btn-sm">
                                                <i class="fa fa-arrow-alt-circle-up"></i>
                                            </a>
                                            <a href="" onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm" >
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

