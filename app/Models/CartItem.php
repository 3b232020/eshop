<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CartItem extends Model
{
    /** @use HasFactory<\Database\Factories\CartItemFactory> */
    use HasFactory;

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

    //  屬於哪張訂單
    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    //  屬於哪個商品
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
