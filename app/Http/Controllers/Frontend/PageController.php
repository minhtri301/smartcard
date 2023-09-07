<?php

namespace App\Http\Controllers\Frontend;

use App\Models\PageSub;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Pages;
use App\Repositories\Tags\TagsRepositoryEloquent;
use App\Repositories\Pages\PagesRepositoryEloquent;
use App\Repositories\Brands\BrandsRepositoryEloquent;
use App\Repositories\Reviews\ReviewsRepositoryEloquent;
use App\Repositories\Products\ProductsRepositoryEloquent;
use App\Repositories\Categories\CategoriesRepositoryEloquent;
use App\Repositories\PagesSub\PagesSubRepository;

class PageController extends Controller
{
    protected $pages;

    public function __construct(PagesSubRepository $pages)
    {
        $this->pages = $pages;
        $this->pages->seoGeneral();
    }

    public function getCatePage(Request $request, $slug)
    {
        try {
            $dataSeo = PageSub::where('slug', $slug)->first();
            if(!empty($dataSeo)){
                $this->pages->createSeo($dataSeo);
                $dataHome = Pages::where('type','home')->first();
                $contentPage = json_decode($dataHome->content);
                $pageSub = PageSub::all();
                return view('frontend.pages.page_sub', compact('dataSeo','contentPage','pageSub'));
            }        
        } catch (\Throwable $th) {
            // throw $th;
            abort(404);
        }
        
    }
}
