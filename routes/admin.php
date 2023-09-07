<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AppsController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\RolesController;
use App\Http\Controllers\Admin\GroupsController;
use App\Http\Controllers\Admin\CustomerController;
use App\Http\Controllers\Admin\PagesSubController;
use App\Http\Controllers\Admin\SettingsController;
use App\Http\Controllers\Admin\GroupUserController;
use App\Http\Controllers\Admin\GroupManagementController;
use App\Http\Controllers\Admin\PagesController;
use App\Http\Controllers\Admin\ContactController;

Route::group(['prefix' => 'admin'], function() {
    Auth::routes(['forgot' => false, 'verify' => false]);
});

Route::group(['prefix' => 'admin', 'middleware' => ['auth']], function() {
    //Hone admin
    Route::get('/', [HomeController::class, 'index'])->name('admin.home');

    // Get layout
    Route::get('/get-layout', [HomeController::class, 'getLayOut'])->name('get.layout');

    Route::get('customer/reload-Code', [CustomerController::class, 'reloadCode'])->name('customer.reloadCode');
    
    //Resources

    Route::resource( 'apps' ,AppsController::class);
    Route::resource( 'customer', CustomerController::class);
    Route::resource( 'users', UserController::class);
    Route::resource( 'groups', GroupsController::class);
    Route::resource( 'page-sub', PagesSubController::class);
    Route::resource( 'contact', ContactController::class);
    Route::resource( 'roles', RolesController::class);

    Route::post('roles/addPermission', [RolesController::class,'addPermission'])->name('roles.addPermission');
    
    Route::post('contact/postMultiDel', [ContactController::class,'deleteMuti'])->name('contact.postMultiDel');

    //Setting
    Route::group(['prefix' => 'settings'], function() {
    Route::get('/general', [SettingsController::class,'getGeneralConfig'])->name('admin.settings.general');
    Route::post('/general', [SettingsController::class,'postGeneralConfig'])->name('admin.settings.general.post');
    });

    // Cấu hình trang đơn
    Route::group(['prefix' => 'pages'], function() {
        Route::get('/', [PagesController::class,'getListPages'])->name('pages.list');
        Route::get('build', [PagesController::class,'getBuildPages'])->name('pages.build');
        Route::post('build', [PagesController::class,'postBuildPages'])->name('pages.build.post');
        Route::post('create', [PagesController::class,'postCreatePages'])->name('pages.create');
    });
    
});