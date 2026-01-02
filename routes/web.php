<?php

use Illuminate\Support\Facades\Route;
use Laravel\Fortify\Features;
use Livewire\Volt\Volt;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartItemController;
use App\Http\Controllers\OrderController;

Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::resource('products', ProductController::class)->only([
    'index', 'show', 'store', 'update', 'destroy'
]);
/*
products.index:
    URI:products
    HTTP request的方法:GET
    Controller或Method: ProductController@index
    說明:列出所有products裡的資料
products.show
    URI:products/{product}
    HTTP request的方法:GET
    Controller或Method: ProductController@show
    說明:顯示某項products的資料

products.create 
    URI:products/create
    HTTP request的方法:GET
    Controller或Method: ProductController@create
    說明:顯示新增products的表單頁面。

products.store 
    URI:products
    HTTP request的方法:POST
    Controller或Method:ProductController@store
    說明:儲存新增的products資料

products.edit 
    URI:products/{product}/edit
    HTTP request的方法:GET
    Controller或Method: ProductController@edit
    說明:顯示編輯products的表單資料

products.update 
    URI:products/{product}
    HTTP request的方法:PUT / PATCH
    Controller或Method: ProductController@update
    說明:更新某一項products的資料

products.destroy
    URI:products/{product}
    HTTP request的方法:DELETE
    Controller或Method: ProductController@destroy
    說明:刪除某項products的資料
*/

Route::view('dashboard', 'dashboard')
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::middleware(['auth'])->group(function () {
    Route::redirect('settings', 'settings/profile');

    Volt::route('settings/profile', 'settings.profile')->name('profile.edit');
    Volt::route('settings/password', 'settings.password')->name('user-password.edit');
    Volt::route('settings/appearance', 'settings.appearance')->name('appearance.edit');

    Volt::route('settings/two-factor', 'settings.two-factor')
        ->middleware(
            when(
                Features::canManageTwoFactorAuthentication()
                    && Features::optionEnabled(Features::twoFactorAuthentication(), 'confirmPassword'),
                ['password.confirm'],
                [],
            ),
        )
        ->name('two-factor.show');

Route::resource('cart_items', CartItemController::class);
Route::resource('orders', OrderController::class);
});
