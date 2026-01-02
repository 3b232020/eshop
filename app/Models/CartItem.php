<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CartItem extends Model
{
    /** @use HasFactory<\Database\Factories\CartItemFactory> */
    use HasFactory;

    protected $fillable = ['product_id', 'quantity', 'user_id'];

    // 屬於哪個使用者
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // 屬於哪個商品
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}