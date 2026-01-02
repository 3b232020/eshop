<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    /** @use HasFactory<\Database\Factories\OrderItemFactory> */
    use HasFactory;

    // 屬於哪張訂單
    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    // 屬於哪個商品
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
