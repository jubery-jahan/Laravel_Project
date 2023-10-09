<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    private static $category, $image, $imageName, $directory, $imageUrl;

    public static function newCategory($request)
    {
        
        self::$category = new Category();
        self::$category->name           = $request->name;
        self::$category->status         = $request->status;
        self::$category->save();
    }
    public static function updateCategory($request, $id)
    {
        self::$category = Category::find($id);
        self::$category->name           = $request->name;
        self::$category->status         = $request->status;
        self::$category->save();
    }
    public static function deleteCategory($id)
    {
        self::$category = Category::find($id);
        if (file_exists(self::$category->image))
        {
            unlink(self::$category->image);
        }
        self::$category->delete();
    }
}
