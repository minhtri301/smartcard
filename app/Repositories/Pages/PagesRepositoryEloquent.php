<?php

namespace App\Repositories\Pages;

use SEO;
use App\Models\Pages;
use Illuminate\Support\Facades\URL;
use Artesaos\SEOTools\Facades\JsonLd;
use Artesaos\SEOTools\Facades\SEOMeta;
use Illuminate\Support\Facades\Request;
use App\Validators\Pages\PagesValidator;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use App\Repositories\Pages\PagesRepository;
use Illuminate\Support\Facades\Auth;
use Prettus\Repository\Eloquent\BaseRepository;
use Prettus\Repository\Criteria\RequestCriteria;

/**
 * Class PagesRepositoryEloquent.
 *
 * @package namespace App\Repositories\Pages;
 */
class PagesRepositoryEloquent extends BaseRepository implements PagesRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return Pages::class;
    }

    public function getSiteInfo()
    {
        $site_info = \App\Models\Options::where('type', 'general')->first();

        return $site_info;
    }

    public function seoGeneral()
    {
        $data = $this->getSiteInfo();

        if ($data) {
            $site_info = json_decode($data->content);
            OpenGraph::setUrl(URL::current());
            OpenGraph::addProperty('locale', 'vi_VN');
            OpenGraph::addProperty('type', 'website');
            OpenGraph::addProperty('author', $site_info->company);
            SEOMeta::addKeyword($site_info->site_keyword);

            view()->share(compact('site_info'));
        }
    }

    public function createSeo($dataSeo = null)
    {
        $data = $this->getSiteInfo();

        $site_info = json_decode($data->content);
        $site_title = (!empty(Auth::guard('customer')->user()->name) ? Auth::guard('customer')->user()->name.' | ' : null) .$site_info->site_title;
        if (!empty($dataSeo->meta_title)) {
            SEOMeta::setTitle(($dataSeo->meta_title.' | '. $site_info->site_title));
            OpenGraph::setTitle(($dataSeo->meta_title.' | '. $site_info->site_title));
            TwitterCard::setTitle(($dataSeo->meta_title.' | '. $site_info->site_title));
            JsonLd::setTitle(($dataSeo->meta_title.' | '. $site_info->site_title));
        } else {
            SEOMeta::setTitle($site_title);
            OpenGraph::setTitle($site_title);
            TwitterCard::setTitle($site_title);
            JsonLd::setTitle($site_title);
        }
        if (!empty($dataSeo->meta_description)) {
            SEOMeta::setDescription($dataSeo->meta_description);
            OpenGraph::setDescription($dataSeo->meta_description);
            JsonLd::setDescription($dataSeo->meta_description);
        } else {
            SEOMeta::setDescription($site_info->site_description);
            OpenGraph::setDescription($site_info->site_description);
            JsonLd::setDescription($site_info->site_description);
        }

        if (!empty($dataSeo->image)) {
            OpenGraph::addImage(url('').$dataSeo->image, ['height' => 400, 'width' => 400]);
        } else {
            OpenGraph::addImage(url('').$site_info->favicon, ['height' => 400, 'width' => 400]);
        }

        if (!empty($dataSeo->meta_keyword)) {
            SEOMeta::addKeyword($dataSeo->meta_keyword);
        }
    }

    public function createSeoCate($dataSeo = null, $productByCate = null, $type = null)
    {
        $data = $this->getSiteInfo();

        $site_info = json_decode($data->content);

        if (!empty($dataSeo->meta_title)) {
            SEOMeta::setTitle($dataSeo->meta_title);
            OpenGraph::setTitle($dataSeo->meta_title);
            TwitterCard::setTitle($dataSeo->meta_title);
            JsonLd::setTitle($dataSeo->meta_title);
        } else {
            SEOMeta::setTitle($site_info->site_title);
            OpenGraph::setTitle($site_info->site_title);
            TwitterCard::setTitle($site_info->site_title);
            JsonLd::setTitle($site_info->site_title);
        }
        if (!empty($dataSeo->meta_description)) {
            SEOMeta::setDescription($dataSeo->meta_description);
            OpenGraph::setDescription($dataSeo->meta_description);
            JsonLd::setDescription($dataSeo->meta_description);
        } else {
            SEOMeta::setDescription($site_info->site_description);
            OpenGraph::setDescription($site_info->site_description);
            JsonLd::setDescription($site_info->site_description);
        }

        if (!empty($dataSeo->image)) {
            OpenGraph::addImage(url('').$dataSeo->image, ['height' => 400, 'width' => 400]);
        } else {
            OpenGraph::addImage(url('').$site_info->logo, ['height' => 400, 'width' => 400]);
        }

        if (!empty($dataSeo->meta_keyword)) {
            SEOMeta::addKeyword($dataSeo->meta_keyword);
        }

        if(!empty($dataSeo)){
            if ($type == 'product_category'){
                $url = route('home.cate_product', $dataSeo->slug);
            }
            if ($type == 'brand_product'){
                $url = route('home.brand_single', $dataSeo->slug);
            }
            
            if ($productByCate->currentPage() == 1){
                if($productByCate->lastPage() > 1){
                    SEOMeta::setNext($url."?page=2");
                }
                SEOMeta::setCanonical($url);
            }
            if (Request::get('page') > 1 && Request::get('page') < $productByCate->lastPage()){
                if(Request::get('page') == 2){
                    SEOMeta::setPrev($url);
                }else{
                    SEOMeta::setPrev($url."?page=".(Request::get('page')-1)."");
                };
                SEOMeta::setNext($url."?page=".(Request::get('page')+1)."");
                SEOMeta::setCanonical(URL::full());
            }
            if ($productByCate->lastPage() == Request::get('page')){
                SEOMeta::setPrev($url."?page=".(Request::get('page')-1)."");
                SEOMeta::setCanonical(URL::full());
            }
            OpenGraph::setUrl($url);
        }
    }

    public function createSeoPostNew($dataSeo = null, $post = null)
    {
        $data = $this->getSiteInfo();

        $site_info = json_decode($data->content);

        if (!empty($dataSeo->meta_title)) {
            SEOMeta::setTitle($dataSeo->meta_title);
            OpenGraph::setTitle($dataSeo->meta_title);
            TwitterCard::setTitle($dataSeo->meta_title);
            JsonLd::setTitle($dataSeo->meta_title);
        } else {
            SEOMeta::setTitle($site_info->site_title);
            OpenGraph::setTitle($site_info->site_title);
            TwitterCard::setTitle($site_info->site_title);
            JsonLd::setTitle($site_info->site_title);
        }
        if (!empty($dataSeo->meta_description)) {
            SEOMeta::setDescription($dataSeo->meta_description);
            OpenGraph::setDescription($dataSeo->meta_description);
            JsonLd::setDescription($dataSeo->meta_description);
        } else {
            SEOMeta::setDescription($site_info->site_description);
            OpenGraph::setDescription($site_info->site_description);
            JsonLd::setDescription($site_info->site_description);
        }

        if (!empty($dataSeo->image)) {
            OpenGraph::addImage(url('').$dataSeo->image, ['height' => 400, 'width' => 400]);
        } else {
            OpenGraph::addImage(url('').$site_info->logo, ['height' => 400, 'width' => 400]);
        }

        if (!empty($dataSeo->meta_keyword)) {
            SEOMeta::addKeyword($dataSeo->meta_keyword);
        }

        if(!empty($dataSeo)){
            $url = route('home.post_news');
            
            if ($post->currentPage() == 1){
                if($post->lastPage() > 1){
                    SEOMeta::setNext($url."?page=2");
                }
                SEOMeta::setCanonical($url);
            }
            if (Request::get('page') > 1 && Request::get('page') < $post->lastPage()){
                SEOMeta::setPrev($url."?page=".(Request::get('page')-1)."");
                SEOMeta::setNext($url."?page=".(Request::get('page')+1)."");
                SEOMeta::setCanonical(URL::full());
            }
            if ($post->lastPage() == Request::get('page')){
                SEOMeta::setPrev($url."?page=".(Request::get('page')-1)."");
                SEOMeta::setCanonical(URL::full());
            }
            OpenGraph::setUrl($url);
        }
    }

    public function createSeoPostCate($dataSeo = null, $postCate = null)
    {
        $data = $this->getSiteInfo();

        $site_info = json_decode($data->content);

        if (!empty($dataSeo->meta_title)) {
            SEOMeta::setTitle($dataSeo->meta_title);
            OpenGraph::setTitle($dataSeo->meta_title);
            TwitterCard::setTitle($dataSeo->meta_title);
            JsonLd::setTitle($dataSeo->meta_title);
        } else {
            SEOMeta::setTitle($site_info->site_title);
            OpenGraph::setTitle($site_info->site_title);
            TwitterCard::setTitle($site_info->site_title);
            JsonLd::setTitle($site_info->site_title);
        }
        if (!empty($dataSeo->meta_description)) {
            SEOMeta::setDescription($dataSeo->meta_description);
            OpenGraph::setDescription($dataSeo->meta_description);
            JsonLd::setDescription($dataSeo->meta_description);
        } else {
            SEOMeta::setDescription($site_info->site_description);
            OpenGraph::setDescription($site_info->site_description);
            JsonLd::setDescription($site_info->site_description);
        }

        if (!empty($dataSeo->image)) {
            OpenGraph::addImage(url('').$dataSeo->image, ['height' => 400, 'width' => 400]);
        } else {
            OpenGraph::addImage(url('').$site_info->logo, ['height' => 400, 'width' => 400]);
        }

        if (!empty($dataSeo->meta_keyword)) {
            SEOMeta::addKeyword($dataSeo->meta_keyword);
        }

        if(!empty($dataSeo)){
            $url = route('home.posts_single', $dataSeo->slug);
            
            if ($postCate->currentPage() == 1){
                if($postCate->lastPage() > 1){
                    SEOMeta::setNext($url."?page=2");
                }
                SEOMeta::setCanonical($url);
            }
            if (Request::get('page') > 1 && Request::get('page') < $postCate->lastPage()){
                SEOMeta::setPrev($url."?page=".(Request::get('page')-1)."");
                SEOMeta::setNext($url."?page=".(Request::get('page')+1)."");
                SEOMeta::setCanonical(URL::full());
            }
            if ($postCate->lastPage() == Request::get('page')){
                SEOMeta::setPrev($url."?page=".(Request::get('page')-1)."");
                SEOMeta::setCanonical(URL::full());
            }
            OpenGraph::setUrl($url);
        }
    }

    public function createSeoUser($data)
    {
        $getSiteInfo = $this->getSiteInfo();

        $site_info = json_decode($getSiteInfo->content);

        if(!empty($data)){
            OpenGraph::addProperty('type', 'Person');
            JsonLd::setType('Person');
            SEOMeta::setCanonical(URL::current());
            OpenGraph::setUrl(URL::current());
        }

        if(!empty($data->meta_title)){
            SEOMeta::setTitle($data->meta_title);
            OpenGraph::setTitle($data->title);
        }else {
            SEOMeta::setTitle($site_info->site_title);
            OpenGraph::setTitle($site_info->site_title);
        }
        if(!empty($data->meta_description)){
            SEOMeta::setDescription($data->meta_description);
            OpenGraph::setDescription($data->meta_description);
        }else {
            SEOMeta::setDescription($site_info->site_description);
            OpenGraph::setDescription($site_info->site_description);
        }
        if (!empty($data->image)) {
            OpenGraph::addImage($data->image, ['height' => 400, 'width' => 400]);
        } else {
            OpenGraph::addImage($site_info->logo_header, ['height' => 400, 'width' => 400]);
        }
        if (!empty($data->meta_keyword)) {
            SEOMeta::addKeyword($data->meta_keyword);
        }
    }

    public function createSeoPost($data)
    {
        $getSiteInfo = $this->getSiteInfo();

        $site_info = json_decode($getSiteInfo->content);

        if(!empty($data)){
            $url = route('home.posts_single', $data->slug);
            OpenGraph::addProperty('type', 'article');
            JsonLd::setType('Article');
            SEOMeta::setCanonical($url);
            SEOMeta::addMeta('article:published_time', $data->created_at->toW3CString(), 'property');
            SEOMeta::addMeta('article:modified_time', $data->updated_at->toW3CString(), 'property');
            OpenGraph::setUrl($url);
        }

        if(!empty($data->meta_title)){
            SEOMeta::setTitle($data->meta_title);
            OpenGraph::setTitle($data->meta_title);
            TwitterCard::setTitle($data->meta_title);
        }else {
            SEOMeta::setTitle($site_info->site_title);
            OpenGraph::setTitle($site_info->site_title);
            JsonLd::setTitle($site_info->site_title);
        }
        if(!empty($data->meta_description)){
            SEOMeta::setDescription($data->meta_description);
            OpenGraph::setDescription($data->meta_description);
            JsonLd::setDescription($data->meta_description);
        }else {
            SEOMeta::setDescription($site_info->site_description);
            OpenGraph::setDescription($site_info->site_description);
            JsonLd::setDescription($site_info->site_description);
        }
        if (!empty($data->image)) {
            OpenGraph::addImage(asset($data->image), ['height' => 400, 'width' => 400]);
        } else {
            OpenGraph::addImage(asset($site_info->logo_header), ['height' => 400, 'width' => 400]);
        }
        if (!empty($data->meta_keyword)) {
            SEOMeta::addKeyword($data->meta_keyword);
        }
    }

    public function createSeoProduct($data)
    {
        $getSiteInfo = $this->getSiteInfo();

        $site_info = json_decode($getSiteInfo->content);

        if(!empty($data)){
            $url = route('home.product_single', $data->slug);
            OpenGraph::addProperty('type', 'product');
            JsonLd::setType('Product');
            SEOMeta::setCanonical($url);
            OpenGraph::setUrl($url);
        }

        if(!empty($data->meta_title)){
            SEOMeta::setTitle($data->meta_title);
            OpenGraph::setTitle($data->title);
            JsonLd::setTitle($data->title);
        }else {
            SEOMeta::setTitle($site_info->site_title);
            OpenGraph::setTitle($site_info->site_title);
            JsonLd::setTitle($site_info->site_title);
        }
        if(!empty($data->meta_description)){
            SEOMeta::setDescription($data->meta_description);
            OpenGraph::setDescription($data->meta_description);
            JsonLd::setDescription($data->meta_description);
        }else {
            SEOMeta::setDescription($site_info->site_description);
            OpenGraph::setDescription($site_info->site_description);
            JsonLd::setDescription($site_info->site_description);
        }
        if (!empty($data->image)) {
            OpenGraph::addImage($data->image, ['height' => 400, 'width' => 400]);
        } else {
            OpenGraph::addImage($site_info->logo_header, ['height' => 400, 'width' => 400]);
        }
        if (!empty($data->meta_keyword)) {
            SEOMeta::addKeyword($data->meta_keyword);
        }
    }

    public function getDataByTypePage($type) {
        $data = $this->model->where('type', $type)->first();
        return $data;
    }

    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }
    
}
