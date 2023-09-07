<?php

use App\Http\Controllers\Frontend\IndexController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Frontend\SinglePageController;
use App\Http\Controllers\Frontend\PageController;
use App\Http\Controllers\Frontend\AccountController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Artisan;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::group(['namespace' => 'Frontend', 'middleware' => 'load'], function()
{
    Route::get('/', [IndexController::class, 'index'])->name('home.page.index');

    Route::post('gui-lien-he', [ContactController::class, 'postContact'])->name('home.contact.post');

    Route::post('gui-email', [ContactController::class, 'postEmail'])->name('home.email.post');

    Route::get('login', [AccountController::class, 'getLogin'])->name('home.login');

    Route::post('login', [AccountController::class, 'postLogin'])->name('home.login.post');

    Route::get('logout', [AccountController::class, 'Logout'])->name('home.logout');

    Route::get('/information', [IndexController::class, 'information'])->name('home.page.information');

    Route::get('/update', [IndexController::class, 'details'])->name('home.page.details');



    Route::group(['middleware' => 'check'], function(){

        Route::get('/update-password', [IndexController::class, 'updatePass'])->name('home.updatePass');

        Route::post('/update-password', [IndexController::class, 'post_updatePass'])->name('home.updatePass.post');
        
        Route::get('/preview', [IndexController::class, 'preview'])->name('home.preview.get');

        Route::get('/card-update-position', [IndexController::class,'cardPosition'])->name('card.update.position');

        Route::post('/information/update', [IndexController::class, 'update'])->name('home.page.update');
        
    });


    Route::get('/page/{slug}', [PageController::class,'getCatePage'])->name('home.page_sub');


    Route::get('/information/add', [IndexController::class, 'add_card'])->name('home.post.card');

    Route::get('/information/loadCard', [IndexController::class, 'loadCard'])->name('home.get.loadcard');

    Route::get('/information/edit/{id}', [IndexController::class, 'editCard'])->name('home.get.edit');

    Route::get('/information/delete/{id}', [IndexController::class, 'deleteCard'])->name('home.delete.card');

    Route::get('/information/updateCard', [IndexController::class, 'updateCard'])->name('home.post.update.card');
    
    Route::get('/information/{id}/{input}', [IndexController::class, 'detailsIcon'])->name('home.page.details.icon');

    Route::get('/{slug}', [IndexController::class, 'shareCard'])->name('home.get.shareCard'); 

    Route::get('/share-card/group-banner',[IndexController::class, 'groupbanner'])->name('home.group_banner');

    
});






