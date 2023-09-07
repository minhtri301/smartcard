<?php

namespace App\Providers;

use Illuminate\Support\Facades\App;
use Illuminate\Support\ServiceProvider;
use App\Repositories\Apps\AppsRepository;
use App\Repositories\User\UserRepository;
use App\Repositories\Apps\AppsRepositoryEloquent;
use App\Repositories\Customer\CustomerRepository;
use App\Repositories\PagesSub\PagesSubRepository;
use App\Repositories\User\UserRepositoryEloquent;
use App\Repositories\Categories\CategoriesRepository;
use App\Repositories\Customer\CustomerRepositoryEloquent;
use App\Repositories\PagesSub\PagesSubRepositoryEloquent;
use App\Repositories\Categories\CategoriesRepositoryEloquent;
use App\Repositories\Pages\PagesRepository;
use App\Repositories\Pages\PagesRepositoryEloquent;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        App::bind(CategoriesRepository::class, CategoriesRepositoryEloquent::class);
        App::bind(PagesRepository::class, PagesRepositoryEloquent::class);
        App::bind(ContactsRepository::class, ContactsRepositoryEloquent::class);
        App::bind(UserRepository::class, UserRepositoryEloquent::class);
        App::bind(CustomerRepository::class, CustomerRepositoryEloquent::class);
        App::bind(AppsRepository::class, AppsRepositoryEloquent::class);
        App::bind(PagesSubRepository::class, PagesSubRepositoryEloquent::class);
        App::bind(PagesRepository::class, PagesRepositoryEloquent::class);
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
