<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\Pages\PagesRepository;

class PagesController extends Controller
{
    protected $pages;

    public function __construct(PagesRepository $pages)
    {
		$this->middleware('permission:Cài đặt');
        $this->pages = $pages;
    }

    public function getListPages()
	{

			$data = $this->pages->orderBy('id', 'ASC')->get();

			return view('admin.pages.list', compact('data'));
	
	}

	public function postCreatePages(Request $request)
	{
	
			$data = [
				'name_page' => $request->name_page,
				'type' => $request->type,
				'route' => $request->route,
				'lang' => 'vi',
			];

			$this->pages->create($data);

			return redirect()->back()->with('success', 'Thêm mới trang thành công');
	
	}

    public function getBuildPages(Request $request)
    {
	
			$type = $request->page;

			$data = $this->pages->where('type', $type)->first();	

			if(view()->exists('admin.pages.'.$type)){

				return view('admin.pages.'.$type, compact('data'));

			}

			return view('admin.pages.layout.default', compact('data'));
		
    }

    public function postBuildPages(Request $request)
    {
		
			$type = $request->type;

			$data = $this->pages->where('type', $type)->first();

			$data->content = !empty($request->content) ? json_encode($request->content) : null;

			$data->meta_title = $request->meta_title;

			$data->meta_description = $request->meta_description;

			$data->meta_keyword = $request->meta_keyword;

			$data->meta_schema = $request->meta_schema;

			$data->image = $request->image;

			$data->title_h1 = $request->title_h1;

			$data->banner = $request->banner;

			$data->save();

			return redirect()->back()->with('success', 'Cập nhật thành công');
	

    	
    }
}
