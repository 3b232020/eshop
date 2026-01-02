<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    /** @use HasFactory<\Database\Factories\OrderFactory> */
    use HasFactory;

    // 訂單屬於某個使用者
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // 訂單擁有很多細項
    public function orderItems()
    {
        return $this->hasMany(OrderItem::class);
    }

}
