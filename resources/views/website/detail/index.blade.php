@extends('website.master')
@section('title')
    Detail
@endsection

@section('body')

    <div class="site-cover site-cover-sm same-height overlay single-page" style="background-image: url('{{asset($blog->image)}}');">
        <div class="container">
            <div class="row same-height justify-content-center">
                <div class="col-md-6">
                    <div class="post-entry text-center">
                        <h1 class="mb-4">{{$blog->title}}</h1>
                        <div class="post-meta align-items-center text-center">
                            <figure class="author-figure mb-0 me-3 d-inline-block"><img src="{{asset($blog->image)}}"></figure>
                            <span class="d-inline-block mt-1">{{$blog->author}}</span>
                            <span> {{$blog->update_at}}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="section">
        <div class="container">

            <div class="row blog-entries element-animate">
                <div class="col-md-12 col-lg-8 main-content">

                    <p class="text-center text-success">{{session('message')}}</p>
                    <hr>

                    <div class="post-content-body">
                        {!! $blog->description !!}
                    </div>

                    <div class="pt-5">
                        <p>Categories:  <a href="#">{{$blog->category->name}}</a>, <a href="#">Travel</a>  Tags: <a href="#">#manila</a>, <a href="#">#asia</a></p>
                    </div>

                    <div class="pt-5 comment-wrap">
                        <h3 class="mb-5 heading">{{count($comments)}} Comments</h3>
                        <ul class="comment-list">
                            @foreach($comments as $comment)
                            <li class="comment">
                                <div class="vcard">
                                    <img src="{{asset('/')}}website/images/person_1.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                    <h3>{{$comment->visitor->name}}</h3>
                                    <div class="meta">{{$comment->date}}</div>
                                    <p> {{$comment->comment}}</p>
                                    <p><a href="#" class="reply rounded">Reply</a></p>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                        <!-- END comment-list -->

                        <div class="comment-form-wrap pt-5">
                            <h3 class="mb-5">Leave a comment</h3>
                            @if(Session::get('visitor_id'))
                            <form action="{{route('comment.store')}}" method="post" class="p-5 bg-light">
                                @csrf
                                <div class="form-group">
                                    <label for="message">Message</label>
                                    <textarea name="comment"  id="message" cols="30" rows="10" class="form-control"></textarea>
                                    <input type="hidden" value="{{$blog->id}}" name="blog_id"/>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Post Comment" class="btn btn-primary">
                                </div>
                            </form>
                            @else
                            <a href="{{route('user-login')}}" class="btn btn-light">log in for comment</a>
                            @endif
                        </div>
                    </div>
                </div>

                <!-- END main-content -->

                <div class="col-md-12 col-lg-4 sidebar">
                    <div class="sidebar-box search-form-wrap">
                        <form action="#" class="sidebar-search-form">
                            <span class="bi-search"></span>
                            <input type="text" class="form-control" id="s" placeholder="Type a keyword and hit enter">
                        </form>
                    </div>
                    <!-- END sidebar-box -->
                    <div class="sidebar-box">
                        <div class="bio text-center">
                            <img src="{{asset('/')}}website/images/person_2.jpg" alt="Image Placeholder" class="img-fluid mb-3">
                            <div class="bio-body">
                                <h2>Hannah Anderson</h2>
                                <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem facilis sunt repellendus excepturi beatae porro debitis voluptate nulla quo veniam fuga sit molestias minus.</p>
                                <p><a href="#" class="btn btn-primary btn-sm rounded px-2 py-2">Read my bio</a></p>
                                <p class="social">
                                    <a href="#" class="p-2"><span class="fa fa-facebook"></span></a>
                                    <a href="#" class="p-2"><span class="fa fa-twitter"></span></a>
                                    <a href="#" class="p-2"><span class="fa fa-instagram"></span></a>
                                    <a href="#" class="p-2"><span class="fa fa-youtube-play"></span></a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- END sidebar-box -->
                    <div class="sidebar-box">
                        <h3 class="heading">Popular Posts</h3>
                        <div class="post-entry-sidebar">
                            <ul>
                                <li>
                                    <a href="">
                                        <img src="{{asset('/')}}website/images/img_1_sq.jpg" alt="Image placeholder" class="me-4 rounded">
                                        <div class="text">
                                            <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">March 15, 2018 </span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="{{asset('/')}}website/images/img_2_sq.jpg" alt="Image placeholder" class="me-4 rounded">
                                        <div class="text">
                                            <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">March 15, 2018 </span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="{{asset('/')}}website/images/img_3_sq.jpg" alt="Image placeholder" class="me-4 rounded">
                                        <div class="text">
                                            <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">March 15, 2018 </span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- END sidebar-box -->

                    <div class="sidebar-box">
                        <h3 class="heading">Categories</h3>
                        <ul class="categories">
                            <li><a href="#">Food <span>(12)</span></a></li>
                            <li><a href="#">Travel <span>(22)</span></a></li>
                            <li><a href="#">Lifestyle <span>(37)</span></a></li>
                            <li><a href="#">Business <span>(42)</span></a></li>
                            <li><a href="#">Adventure <span>(14)</span></a></li>
                        </ul>
                    </div>
                    <!-- END sidebar-box -->

                    <div class="sidebar-box">
                        <h3 class="heading">Tags</h3>
                        <ul class="tags">
                            <li><a href="#">Travel</a></li>
                            <li><a href="#">Adventure</a></li>
                            <li><a href="#">Food</a></li>
                            <li><a href="#">Lifestyle</a></li>
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Freelancing</a></li>
                            <li><a href="#">Travel</a></li>
                            <li><a href="#">Adventure</a></li>
                            <li><a href="#">Food</a></li>
                            <li><a href="#">Lifestyle</a></li>
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Freelancing</a></li>
                        </ul>
                    </div>
                </div>
                <!-- END sidebar -->
            </div>
        </div>
    </section>


    <!-- Start posts-entry -->
    <section class="section posts-entry posts-entry-sm bg-light">
        <div class="container">
            <div class="row mb-4">
                <div class="col-12 text-uppercase text-black">More Blog Posts</div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3">
                    <div class="blog-entry">
                        <a href="single.html" class="img-link">
                            <img src="{{asset('/')}}website/images/img_1_horizontal.jpg" alt="Image" class="img-fluid">
                        </a>
                        <span class="date">Apr. 14th, 2022</span>
                        <h2><a href="single.html">Thought you loved Python? Wait until you meet Rust</a></h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                        <p><a href="#" class="read-more">Continue Reading</a></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="blog-entry">
                        <a href="single.html" class="img-link">
                            <img src="{{asset('/')}}website/images/img_2_horizontal.jpg" alt="Image" class="img-fluid">
                        </a>
                        <span class="date">Apr. 14th, 2022</span>
                        <h2><a href="single.html">Startup vs corporate: What job suits you best?</a></h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                        <p><a href="#" class="read-more">Continue Reading</a></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="blog-entry">
                        <a href="single.html" class="img-link">
                            <img src="{{asset('/')}}website/images/img_3_horizontal.jpg" alt="Image" class="img-fluid">
                        </a>
                        <span class="date">Apr. 14th, 2022</span>
                        <h2><a href="single.html">UK sees highest inflation in 30 years</a></h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                        <p><a href="#" class="read-more">Continue Reading</a></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="blog-entry">
                        <a href="single.html" class="img-link">
                            <img src="{{asset('/')}}website/images/img_4_horizontal.jpg" alt="Image" class="img-fluid">
                        </a>
                        <span class="date">Apr. 14th, 2022</span>
                        <h2><a href="single.html">Don’t assume your user data in the cloud is safe</a></h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                        <p><a href="#" class="read-more">Continue Reading</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End posts-entry -->

@endsection
