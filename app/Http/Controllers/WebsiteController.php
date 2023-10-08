<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Comment;

class WebsiteController extends Controller
{
    private $blogs, $blog, $categories, $comments;

    public function index()
    {
        $this->blogs = Blog::orderBy('id','desc')->take(9)->get(['id','title','image']);
        return view ('website.home.index',['blogs'=>$this->blogs]);
    }
    public function category($id)
    {
        $this->blogs = Blog::where(['category_id'=>$id,'status'=>1])->orderBy('id','desc')->get();
        return view ('website.category.index',['blogs'=>$this->blogs]);
    }
    public function detail($id)
    {
        $this->blog = Blog::find($id);
        $this->comments = Comment::where('blog_id', $id)->where('status',1)->get();
        return view ('website.detail.index',['blog'=>$this->blog,'comments'=> $this->comments]);
    }
}
