<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    /** @use HasFactory<\Database\Factories\ProductFactory> */
    use HasFactory;

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    //商品被放在很多購物車項目裡
    public function cartItems()
    {
        return $this->hasMany(CartItem::class);
    }

    // 商品出現在很多訂單細項裡
    public function orderItems()
    {
        return $this->hasMany(OrderItem::class);
    }
}
